import { api, APIError, Query } from "encore.dev/api";
import { db } from "./db";

interface Condition {
  id: number;
  name: string;
  diagnostic_code_id: number | null;
  vbkb_url: string | null;
  vbkb_slug: string | null;
  vbkb_anchor: string | null;
}

export const listConditions = api(
  { method: "GET", path: "/conditions", expose: true },
  async (p: { diagnostic_code_id?: Query<number>; limit?: Query<number>; offset?: Query<number> }): Promise<{ conditions: Condition[]; total: number }> => {
    const limit = p.limit ?? 50;
    const offset = p.offset ?? 0;
    const rows = p.diagnostic_code_id != null
      ? db.query<Condition>`
          SELECT id, name, diagnostic_code_id, vbkb_url, vbkb_slug, vbkb_anchor
          FROM conditions WHERE diagnostic_code_id = ${p.diagnostic_code_id} ORDER BY name LIMIT ${limit} OFFSET ${offset}
        `
      : db.query<Condition>`
          SELECT id, name, diagnostic_code_id, vbkb_url, vbkb_slug, vbkb_anchor
          FROM conditions ORDER BY name LIMIT ${limit} OFFSET ${offset}
        `;
    const conditions: Condition[] = [];
    for await (const row of rows) conditions.push(row);
    const count = p.diagnostic_code_id != null
      ? await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM conditions WHERE diagnostic_code_id = ${p.diagnostic_code_id}`
      : await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM conditions`;
    return { conditions, total: count?.count ?? 0 };
  }
);

export const getCondition = api(
  { method: "GET", path: "/conditions/:id", expose: true },
  async ({ id }: { id: number }): Promise<Condition> => {
    const row = await db.queryRow<Condition>`
      SELECT id, name, diagnostic_code_id, vbkb_url, vbkb_slug, vbkb_anchor
      FROM conditions WHERE id = ${id}
    `;
    if (!row) throw APIError.notFound("condition not found");
    return row;
  }
);

interface ConditionInput {
  name: string;
  diagnostic_code_id?: number | null;
  vbkb_url?: string | null;
  vbkb_slug?: string | null;
  vbkb_anchor?: string | null;
}

export const createCondition = api(
  { method: "POST", path: "/conditions", expose: true },
  async (p: ConditionInput): Promise<Condition> => {
    const row = await db.queryRow<Condition>`
      INSERT INTO conditions (name, diagnostic_code_id, vbkb_url, vbkb_slug, vbkb_anchor)
      VALUES (${p.name}, ${p.diagnostic_code_id ?? null}, ${p.vbkb_url ?? null}, ${p.vbkb_slug ?? null}, ${p.vbkb_anchor ?? null})
      RETURNING id, name, diagnostic_code_id, vbkb_url, vbkb_slug, vbkb_anchor
    `;
    return row!;
  }
);

interface UpdateConditionParams {
  id: number;
  name?: string;
  diagnostic_code_id?: number | null;
  vbkb_url?: string | null;
  vbkb_slug?: string | null;
  vbkb_anchor?: string | null;
}

export const updateCondition = api(
  { method: "PATCH", path: "/conditions/:id", expose: true },
  async (p: UpdateConditionParams): Promise<Condition> => {
    const e = await db.queryRow<Condition>`
      SELECT id, name, diagnostic_code_id, vbkb_url, vbkb_slug, vbkb_anchor FROM conditions WHERE id = ${p.id}
    `;
    if (!e) throw APIError.notFound("condition not found");
    const row = await db.queryRow<Condition>`
      UPDATE conditions
      SET name               = ${p.name ?? e.name},
          diagnostic_code_id = ${p.diagnostic_code_id !== undefined ? p.diagnostic_code_id : e.diagnostic_code_id},
          vbkb_url           = ${p.vbkb_url !== undefined ? p.vbkb_url : e.vbkb_url},
          vbkb_slug          = ${p.vbkb_slug !== undefined ? p.vbkb_slug : e.vbkb_slug},
          vbkb_anchor        = ${p.vbkb_anchor !== undefined ? p.vbkb_anchor : e.vbkb_anchor}
      WHERE id = ${p.id}
      RETURNING id, name, diagnostic_code_id, vbkb_url, vbkb_slug, vbkb_anchor
    `;
    return row!;
  }
);

export const deleteCondition = api(
  { method: "DELETE", path: "/conditions/:id", expose: true },
  async ({ id }: { id: number }): Promise<void> => {
    const row = await db.queryRow`SELECT id FROM conditions WHERE id = ${id}`;
    if (!row) throw APIError.notFound("condition not found");
    await db.exec`DELETE FROM conditions WHERE id = ${id}`;
  }
);
