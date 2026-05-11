import { api, APIError, Query } from "encore.dev/api";
import { db } from "./db";

interface DcCrossref {
  id: number;
  from_code_id: number;
  to_code_id: number;
  ref_type: string;
  notes: string | null;
}

export const listDcCrossrefs = api(
  { method: "GET", path: "/dc-crossrefs", expose: true },
  async (p: { from_code_id?: Query<number>; to_code_id?: Query<number>; limit?: Query<number>; offset?: Query<number> }): Promise<{ dc_crossrefs: DcCrossref[]; total: number }> => {
    const limit = p.limit ?? 50;
    const offset = p.offset ?? 0;
    const rows = await db.query<DcCrossref>`
      SELECT id, from_code_id, to_code_id, ref_type, notes
      FROM dc_crossrefs
      WHERE (${p.from_code_id ?? null}::int IS NULL OR from_code_id = ${p.from_code_id ?? null})
        AND (${p.to_code_id ?? null}::int IS NULL OR to_code_id = ${p.to_code_id ?? null})
      ORDER BY id LIMIT ${limit} OFFSET ${offset}
    `;
    const dc_crossrefs: DcCrossref[] = [];
    for await (const row of rows) dc_crossrefs.push(row);
    const count = await db.queryRow<{ count: number }>`
      SELECT COUNT(*)::int AS count FROM dc_crossrefs
      WHERE (${p.from_code_id ?? null}::int IS NULL OR from_code_id = ${p.from_code_id ?? null})
        AND (${p.to_code_id ?? null}::int IS NULL OR to_code_id = ${p.to_code_id ?? null})
    `;
    return { dc_crossrefs, total: count?.count ?? 0 };
  }
);

export const getDcCrossref = api(
  { method: "GET", path: "/dc-crossrefs/:id", expose: true },
  async ({ id }: { id: number }): Promise<DcCrossref> => {
    const row = await db.queryRow<DcCrossref>`
      SELECT id, from_code_id, to_code_id, ref_type, notes FROM dc_crossrefs WHERE id = ${id}
    `;
    if (!row) throw APIError.notFound("crossref not found");
    return row;
  }
);

interface DcCrossrefInput {
  from_code_id: number;
  to_code_id: number;
  ref_type: string;
  notes?: string | null;
}

export const createDcCrossref = api(
  { method: "POST", path: "/dc-crossrefs", expose: true },
  async (p: DcCrossrefInput): Promise<DcCrossref> => {
    const row = await db.queryRow<DcCrossref>`
      INSERT INTO dc_crossrefs (from_code_id, to_code_id, ref_type, notes)
      VALUES (${p.from_code_id}, ${p.to_code_id}, ${p.ref_type}, ${p.notes ?? null})
      RETURNING id, from_code_id, to_code_id, ref_type, notes
    `;
    return row!;
  }
);

interface UpdateDcCrossrefParams {
  id: number;
  from_code_id?: number;
  to_code_id?: number;
  ref_type?: string;
  notes?: string | null;
}

export const updateDcCrossref = api(
  { method: "PATCH", path: "/dc-crossrefs/:id", expose: true },
  async (p: UpdateDcCrossrefParams): Promise<DcCrossref> => {
    const e = await db.queryRow<DcCrossref>`
      SELECT id, from_code_id, to_code_id, ref_type, notes FROM dc_crossrefs WHERE id = ${p.id}
    `;
    if (!e) throw APIError.notFound("crossref not found");
    const row = await db.queryRow<DcCrossref>`
      UPDATE dc_crossrefs
      SET from_code_id = ${p.from_code_id ?? e.from_code_id},
          to_code_id   = ${p.to_code_id ?? e.to_code_id},
          ref_type     = ${p.ref_type ?? e.ref_type},
          notes        = ${p.notes !== undefined ? p.notes : e.notes}
      WHERE id = ${p.id}
      RETURNING id, from_code_id, to_code_id, ref_type, notes
    `;
    return row!;
  }
);

export const deleteDcCrossref = api(
  { method: "DELETE", path: "/dc-crossrefs/:id", expose: true },
  async ({ id }: { id: number }): Promise<void> => {
    const row = await db.queryRow`SELECT id FROM dc_crossrefs WHERE id = ${id}`;
    if (!row) throw APIError.notFound("crossref not found");
    await db.exec`DELETE FROM dc_crossrefs WHERE id = ${id}`;
  }
);
