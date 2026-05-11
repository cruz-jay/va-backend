import { api, APIError, Query } from "encore.dev/api";
import { db } from "./db";

interface CfrSection {
  id: number;
  body_system_id: number | null;
  section_number: string;
  title: string | null;
  content_text: string | null;
  content_xml: string | null;
  source_url: string | null;
  effective_date: string | null;
}

export const listCfrSections = api(
  { method: "GET", path: "/cfr-sections", expose: true },
  async (p: { body_system_id?: Query<number>; limit?: Query<number>; offset?: Query<number> }): Promise<{ cfr_sections: CfrSection[]; total: number }> => {
    const limit = p.limit ?? 50;
    const offset = p.offset ?? 0;
    const rows = p.body_system_id != null
      ? db.query<CfrSection>`
          SELECT id, body_system_id, section_number, title, content_text, content_xml, source_url, effective_date::text
          FROM cfr_sections WHERE body_system_id = ${p.body_system_id} ORDER BY id LIMIT ${limit} OFFSET ${offset}
        `
      : db.query<CfrSection>`
          SELECT id, body_system_id, section_number, title, content_text, content_xml, source_url, effective_date::text
          FROM cfr_sections ORDER BY id LIMIT ${limit} OFFSET ${offset}
        `;
    const cfr_sections: CfrSection[] = [];
    for await (const row of rows) cfr_sections.push(row);
    const count = p.body_system_id != null
      ? await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM cfr_sections WHERE body_system_id = ${p.body_system_id}`
      : await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM cfr_sections`;
    return { cfr_sections, total: count?.count ?? 0 };
  }
);

export const getCfrSection = api(
  { method: "GET", path: "/cfr-sections/:id", expose: true },
  async ({ id }: { id: number }): Promise<CfrSection> => {
    const row = await db.queryRow<CfrSection>`
      SELECT id, body_system_id, section_number, title, content_text, content_xml, source_url, effective_date::text
      FROM cfr_sections WHERE id = ${id}
    `;
    if (!row) throw APIError.notFound("CFR section not found");
    return row;
  }
);

interface CfrSectionInput {
  body_system_id?: number | null;
  section_number: string;
  title?: string | null;
  content_text?: string | null;
  content_xml?: string | null;
  source_url?: string | null;
  effective_date?: string | null;
}

export const createCfrSection = api(
  { method: "POST", path: "/cfr-sections", expose: true },
  async (p: CfrSectionInput): Promise<CfrSection> => {
    const row = await db.queryRow<CfrSection>`
      INSERT INTO cfr_sections (body_system_id, section_number, title, content_text, content_xml, source_url, effective_date)
      VALUES (${p.body_system_id ?? null}, ${p.section_number}, ${p.title ?? null}, ${p.content_text ?? null},
              ${p.content_xml ?? null}, ${p.source_url ?? null}, ${p.effective_date ?? null})
      RETURNING id, body_system_id, section_number, title, content_text, content_xml, source_url, effective_date::text
    `;
    return row!;
  }
);

interface UpdateCfrSectionParams {
  id: number;
  body_system_id?: number | null;
  section_number?: string;
  title?: string | null;
  content_text?: string | null;
  content_xml?: string | null;
  source_url?: string | null;
  effective_date?: string | null;
}

export const updateCfrSection = api(
  { method: "PATCH", path: "/cfr-sections/:id", expose: true },
  async (p: UpdateCfrSectionParams): Promise<CfrSection> => {
    const e = await db.queryRow<CfrSection>`
      SELECT id, body_system_id, section_number, title, content_text, content_xml, source_url, effective_date::text
      FROM cfr_sections WHERE id = ${p.id}
    `;
    if (!e) throw APIError.notFound("CFR section not found");
    const row = await db.queryRow<CfrSection>`
      UPDATE cfr_sections
      SET body_system_id = ${p.body_system_id !== undefined ? p.body_system_id : e.body_system_id},
          section_number = ${p.section_number ?? e.section_number},
          title          = ${p.title !== undefined ? p.title : e.title},
          content_text   = ${p.content_text !== undefined ? p.content_text : e.content_text},
          content_xml    = ${p.content_xml !== undefined ? p.content_xml : e.content_xml},
          source_url     = ${p.source_url !== undefined ? p.source_url : e.source_url},
          effective_date = ${p.effective_date !== undefined ? p.effective_date : e.effective_date}
      WHERE id = ${p.id}
      RETURNING id, body_system_id, section_number, title, content_text, content_xml, source_url, effective_date::text
    `;
    return row!;
  }
);

export const deleteCfrSection = api(
  { method: "DELETE", path: "/cfr-sections/:id", expose: true },
  async ({ id }: { id: number }): Promise<void> => {
    const row = await db.queryRow`SELECT id FROM cfr_sections WHERE id = ${id}`;
    if (!row) throw APIError.notFound("CFR section not found");
    await db.exec`DELETE FROM cfr_sections WHERE id = ${id}`;
  }
);
