import { api, APIError, Query } from "encore.dev/api";
import { db } from "./db";

interface VbkbDcCommentary {
  id: number;
  article_id: number;
  diagnostic_code_id: number | null;
  dc_code_raw: string | null;
  section_heading: string | null;
  content_markdown: string | null;
  source_url: string | null;
}

export const listVbkbDcCommentary = api(
  { method: "GET", path: "/vbkb-dc-commentary", expose: true },
  async (p: { article_id?: Query<number>; diagnostic_code_id?: Query<number>; limit?: Query<number>; offset?: Query<number> }): Promise<{ vbkb_dc_commentary: VbkbDcCommentary[]; total: number }> => {
    const limit = p.limit ?? 50;
    const offset = p.offset ?? 0;
    const rows = await db.query<VbkbDcCommentary>`
      SELECT id, article_id, diagnostic_code_id, dc_code_raw, section_heading, content_markdown, source_url
      FROM vbkb_dc_commentary
      WHERE (${p.article_id ?? null}::int IS NULL OR article_id = ${p.article_id ?? null})
        AND (${p.diagnostic_code_id ?? null}::int IS NULL OR diagnostic_code_id = ${p.diagnostic_code_id ?? null})
      ORDER BY id LIMIT ${limit} OFFSET ${offset}
    `;
    const vbkb_dc_commentary: VbkbDcCommentary[] = [];
    for await (const row of rows) vbkb_dc_commentary.push(row);
    const count = await db.queryRow<{ count: number }>`
      SELECT COUNT(*)::int AS count FROM vbkb_dc_commentary
      WHERE (${p.article_id ?? null}::int IS NULL OR article_id = ${p.article_id ?? null})
        AND (${p.diagnostic_code_id ?? null}::int IS NULL OR diagnostic_code_id = ${p.diagnostic_code_id ?? null})
    `;
    return { vbkb_dc_commentary, total: count?.count ?? 0 };
  }
);

export const getVbkbDcCommentary = api(
  { method: "GET", path: "/vbkb-dc-commentary/:id", expose: true },
  async ({ id }: { id: number }): Promise<VbkbDcCommentary> => {
    const row = await db.queryRow<VbkbDcCommentary>`
      SELECT id, article_id, diagnostic_code_id, dc_code_raw, section_heading, content_markdown, source_url
      FROM vbkb_dc_commentary WHERE id = ${id}
    `;
    if (!row) throw APIError.notFound("VBKB DC commentary not found");
    return row;
  }
);

interface VbkbDcCommentaryInput {
  article_id: number;
  diagnostic_code_id?: number | null;
  dc_code_raw?: string | null;
  section_heading?: string | null;
  content_markdown?: string | null;
  source_url?: string | null;
}

export const createVbkbDcCommentary = api(
  { method: "POST", path: "/vbkb-dc-commentary", expose: true },
  async (p: VbkbDcCommentaryInput): Promise<VbkbDcCommentary> => {
    const row = await db.queryRow<VbkbDcCommentary>`
      INSERT INTO vbkb_dc_commentary (article_id, diagnostic_code_id, dc_code_raw, section_heading, content_markdown, source_url)
      VALUES (${p.article_id}, ${p.diagnostic_code_id ?? null}, ${p.dc_code_raw ?? null},
              ${p.section_heading ?? null}, ${p.content_markdown ?? null}, ${p.source_url ?? null})
      RETURNING id, article_id, diagnostic_code_id, dc_code_raw, section_heading, content_markdown, source_url
    `;
    return row!;
  }
);

interface UpdateVbkbDcCommentaryParams {
  id: number;
  article_id?: number;
  diagnostic_code_id?: number | null;
  dc_code_raw?: string | null;
  section_heading?: string | null;
  content_markdown?: string | null;
  source_url?: string | null;
}

export const updateVbkbDcCommentary = api(
  { method: "PATCH", path: "/vbkb-dc-commentary/:id", expose: true },
  async (p: UpdateVbkbDcCommentaryParams): Promise<VbkbDcCommentary> => {
    const e = await db.queryRow<VbkbDcCommentary>`
      SELECT id, article_id, diagnostic_code_id, dc_code_raw, section_heading, content_markdown, source_url
      FROM vbkb_dc_commentary WHERE id = ${p.id}
    `;
    if (!e) throw APIError.notFound("VBKB DC commentary not found");
    const row = await db.queryRow<VbkbDcCommentary>`
      UPDATE vbkb_dc_commentary
      SET article_id         = ${p.article_id ?? e.article_id},
          diagnostic_code_id = ${p.diagnostic_code_id !== undefined ? p.diagnostic_code_id : e.diagnostic_code_id},
          dc_code_raw        = ${p.dc_code_raw !== undefined ? p.dc_code_raw : e.dc_code_raw},
          section_heading    = ${p.section_heading !== undefined ? p.section_heading : e.section_heading},
          content_markdown   = ${p.content_markdown !== undefined ? p.content_markdown : e.content_markdown},
          source_url         = ${p.source_url !== undefined ? p.source_url : e.source_url}
      WHERE id = ${p.id}
      RETURNING id, article_id, diagnostic_code_id, dc_code_raw, section_heading, content_markdown, source_url
    `;
    return row!;
  }
);

export const deleteVbkbDcCommentary = api(
  { method: "DELETE", path: "/vbkb-dc-commentary/:id", expose: true },
  async ({ id }: { id: number }): Promise<void> => {
    const row = await db.queryRow`SELECT id FROM vbkb_dc_commentary WHERE id = ${id}`;
    if (!row) throw APIError.notFound("VBKB DC commentary not found");
    await db.exec`DELETE FROM vbkb_dc_commentary WHERE id = ${id}`;
  }
);
