import { readFileSync, writeFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const CSV_DIR = join(__dirname, "csv_preview");
const OUT = join(__dirname, "va/migrations/002_seed.up.sql");

function parseCSV(content) {
  const rows = [];
  let row = [], field = "", inQ = false;
  for (let i = 0; i < content.length; i++) {
    const ch = content[i];
    if (inQ) {
      if (ch === '"' && content[i + 1] === '"') { field += '"'; i++; }
      else if (ch === '"') inQ = false;
      else field += ch;
    } else {
      if (ch === '"') inQ = true;
      else if (ch === ',') { row.push(field); field = ""; }
      else if (ch === "\r") { /* skip */ }
      else if (ch === "\n") { row.push(field); rows.push(row); row = []; field = ""; }
      else field += ch;
    }
  }
  if (row.length || field) { row.push(field); rows.push(row); }
  return rows;
}

function readCSV(file) {
  const rows = parseCSV(readFileSync(join(CSV_DIR, file), "utf8"));
  const headers = rows[0];
  return rows.slice(1)
    .filter(r => r.length === headers.length && r.some(f => f !== ""))
    .map(r => Object.fromEntries(headers.map((h, i) => [h, r[i]])));
}

function lit(value, type = "text") {
  if (value === "" || value == null) return "NULL";
  if (type === "int") {
    const n = parseInt(value, 10);
    return isNaN(n) ? "NULL" : String(n);
  }
  return `'${value.replace(/'/g, "''")}'`;
}

// Resolve nullable FK: return lit(id) if it exists in the id set, else NULL
function fkLit(value, idSet) {
  if (value === "" || value == null) return "NULL";
  const n = parseInt(value, 10);
  if (isNaN(n) || !idSet.has(n)) return "NULL";
  return String(n);
}

const parts = [];

// ── body_systems ──────────────────────────────────────────────────────────────
const bodySystems = readCSV("body_systems.csv");
const bodySystemIds = new Set(bodySystems.map(r => parseInt(r.id)));
parts.push(
  `INSERT INTO body_systems (id, name, cfr_section, vbkb_slug, vbkb_url) OVERRIDING SYSTEM VALUE VALUES\n  ` +
  bodySystems.map(r =>
    `(${lit(r.id,"int")}, ${lit(r.name)}, ${lit(r.cfr_section)}, ${lit(r.vbkb_slug)}, ${lit(r.vbkb_url)})`
  ).join(",\n  ") + ";",
  `SELECT setval(pg_get_serial_sequence('body_systems','id'), MAX(id)) FROM body_systems;`
);

// ── cfr_sections ──────────────────────────────────────────────────────────────
const cfrSections = readCSV("cfr_sections.csv");
const cfrSectionIds = new Set(cfrSections.map(r => parseInt(r.id)));
parts.push(
  `INSERT INTO cfr_sections (id, body_system_id, section_number, title, content_text, content_xml, source_url, effective_date) OVERRIDING SYSTEM VALUE VALUES\n  ` +
  cfrSections.map(r =>
    `(${lit(r.id,"int")}, ${fkLit(r.body_system_id, bodySystemIds)}, ${lit(r.section_number)}, ${lit(r.title)}, ${lit(r.content_text)}, ${lit(r.content_xml)}, ${lit(r.source_url)}, ${lit(r.effective_date)})`
  ).join(",\n  ") + ";",
  `SELECT setval(pg_get_serial_sequence('cfr_sections','id'), MAX(id)) FROM cfr_sections;`
);

// ── vbkb_articles ─────────────────────────────────────────────────────────────
const vbkbArticles = readCSV("vbkb_articles.csv");
const vbkbArticleIds = new Set(vbkbArticles.map(r => parseInt(r.id)));
parts.push(
  `INSERT INTO vbkb_articles (id, slug, title, body_system_id, intro_markdown, pyramiding_notes, presumptive_notes, important_notes, full_markdown, source_url, scraped_at) OVERRIDING SYSTEM VALUE VALUES\n  ` +
  vbkbArticles.map(r =>
    `(${lit(r.id,"int")}, ${lit(r.slug)}, ${lit(r.title)}, ${fkLit(r.body_system_id, bodySystemIds)}, ${lit(r.intro_markdown)}, ${lit(r.pyramiding_notes)}, ${lit(r.presumptive_notes)}, ${lit(r.important_notes)}, ${lit(r.full_markdown)}, ${lit(r.source_url)}, ${lit(r.scraped_at)})`
  ).join(",\n  ") + ";",
  `SELECT setval(pg_get_serial_sequence('vbkb_articles','id'), MAX(id)) FROM vbkb_articles;`
);

// ── diagnostic_codes ──────────────────────────────────────────────────────────
const diagnosticCodes = readCSV("diagnostic_codes.csv");
const diagnosticCodeIds = new Set(diagnosticCodes.map(r => parseInt(r.id)));
parts.push(
  `INSERT INTO diagnostic_codes (id, code, name, cfr_section_id, body_system_id, general_notes, source_url) OVERRIDING SYSTEM VALUE VALUES\n  ` +
  diagnosticCodes.map(r =>
    `(${lit(r.id,"int")}, ${lit(r.code,"int")}, ${lit(r.name)}, ${fkLit(r.cfr_section_id, cfrSectionIds)}, ${fkLit(r.body_system_id, bodySystemIds)}, ${lit(r.general_notes)}, ${lit(r.source_url)})`
  ).join(",\n  ") + ";",
  `SELECT setval(pg_get_serial_sequence('diagnostic_codes','id'), MAX(id)) FROM diagnostic_codes;`
);

// ── conditions (nullable FK) ───────────────────────────────────────────────────
const conditions = readCSV("conditions.csv");
parts.push(
  `INSERT INTO conditions (id, name, diagnostic_code_id, vbkb_url, vbkb_slug, vbkb_anchor) OVERRIDING SYSTEM VALUE VALUES\n  ` +
  conditions.map(r =>
    `(${lit(r.id,"int")}, ${lit(r.name)}, ${fkLit(r.diagnostic_code_id, diagnosticCodeIds)}, ${lit(r.vbkb_url)}, ${lit(r.vbkb_slug)}, ${lit(r.vbkb_anchor)})`
  ).join(",\n  ") + ";",
  `SELECT setval(pg_get_serial_sequence('conditions','id'), MAX(id)) FROM conditions;`
);

// ── dc_crossrefs (NOT NULL FKs — skip rows with missing refs) ─────────────────
const dcCrossrefs = readCSV("dc_crossrefs.csv")
  .filter(r => {
    const from = parseInt(r.from_code_id), to = parseInt(r.to_code_id);
    return diagnosticCodeIds.has(from) && diagnosticCodeIds.has(to);
  });
if (dcCrossrefs.length > 0) {
  parts.push(
    `INSERT INTO dc_crossrefs (id, from_code_id, to_code_id, ref_type, notes) OVERRIDING SYSTEM VALUE VALUES\n  ` +
    dcCrossrefs.map(r =>
      `(${lit(r.id,"int")}, ${lit(r.from_code_id,"int")}, ${lit(r.to_code_id,"int")}, ${lit(r.ref_type)}, ${lit(r.notes)})`
    ).join(",\n  ") + ";",
    `SELECT setval(pg_get_serial_sequence('dc_crossrefs','id'), MAX(id)) FROM dc_crossrefs;`
  );
} else {
  parts.push("-- dc_crossrefs: all rows skipped (referenced diagnostic_code IDs not in preview dataset)");
}

// ── rating_criteria (NOT NULL FK — skip rows with missing refs) ───────────────
const ratingCriteria = readCSV("rating_criteria.csv")
  .filter(r => diagnosticCodeIds.has(parseInt(r.diagnostic_code_id)));
if (ratingCriteria.length > 0) {
  parts.push(
    `INSERT INTO rating_criteria (id, diagnostic_code_id, rating_pct, criteria_text) OVERRIDING SYSTEM VALUE VALUES\n  ` +
    ratingCriteria.map(r =>
      `(${lit(r.id,"int")}, ${lit(r.diagnostic_code_id,"int")}, ${lit(r.rating_pct,"int")}, ${lit(r.criteria_text)})`
    ).join(",\n  ") + ";",
    `SELECT setval(pg_get_serial_sequence('rating_criteria','id'), MAX(id)) FROM rating_criteria;`
  );
} else {
  parts.push("-- rating_criteria: all rows skipped (referenced diagnostic_code IDs not in preview dataset)");
}

// ── vbkb_dc_commentary (article_id NOT NULL, diagnostic_code_id nullable) ─────
const vbkbCommentary = readCSV("vbkb_dc_commentary.csv")
  .filter(r => vbkbArticleIds.has(parseInt(r.article_id)));
if (vbkbCommentary.length > 0) {
  parts.push(
    `INSERT INTO vbkb_dc_commentary (id, article_id, diagnostic_code_id, dc_code_raw, section_heading, content_markdown, source_url) OVERRIDING SYSTEM VALUE VALUES\n  ` +
    vbkbCommentary.map(r =>
      `(${lit(r.id,"int")}, ${lit(r.article_id,"int")}, ${fkLit(r.diagnostic_code_id, diagnosticCodeIds)}, ${lit(r.dc_code_raw)}, ${lit(r.section_heading)}, ${lit(r.content_markdown)}, ${lit(r.source_url)})`
    ).join(",\n  ") + ";",
    `SELECT setval(pg_get_serial_sequence('vbkb_dc_commentary','id'), MAX(id)) FROM vbkb_dc_commentary;`
  );
} else {
  parts.push("-- vbkb_dc_commentary: all rows skipped (referenced article IDs not in preview dataset)");
}

const sql = parts.join("\n\n") + "\n";
writeFileSync(OUT, sql, "utf8");

// Summary
console.log("Seed summary:");
console.log(`  body_systems:       ${bodySystems.length} rows`);
console.log(`  cfr_sections:       ${cfrSections.length} rows`);
console.log(`  vbkb_articles:      ${vbkbArticles.length} rows`);
console.log(`  diagnostic_codes:   ${diagnosticCodes.length} rows`);
console.log(`  conditions:         ${conditions.length} rows`);
console.log(`  dc_crossrefs:       ${dcCrossrefs.length} rows (filtered)`);
console.log(`  rating_criteria:    ${ratingCriteria.length} rows (filtered)`);
console.log(`  vbkb_dc_commentary: ${vbkbCommentary.length} rows (filtered)`);
console.log(`Written ${OUT} (${(sql.length / 1024).toFixed(1)} KB)`);
