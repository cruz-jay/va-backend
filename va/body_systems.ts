import { api, APIError, Query } from "encore.dev/api";
import { db } from "./db";

interface BodySystem {
  id: number;
  name: string;
  cfr_section: string | null;
  vbkb_slug: string | null;
  vbkb_url: string | null;
}

export const listBodySystems = api(
  { method: "GET", path: "/body-systems", expose: true },
  async (p: { limit?: Query<number>; offset?: Query<number> }): Promise<{ body_systems: BodySystem[]; total: number }> => {
    const limit = p.limit ?? 50;
    const offset = p.offset ?? 0;
    const rows = await db.query<BodySystem>`
      SELECT id, name, cfr_section, vbkb_slug, vbkb_url
      FROM body_systems ORDER BY id LIMIT ${limit} OFFSET ${offset}
    `;
    const body_systems: BodySystem[] = [];
    for await (const row of rows) body_systems.push(row);
    const count = await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM body_systems`;
    return { body_systems, total: count?.count ?? 0 };
  }
);

export const getBodySystem = api(
  { method: "GET", path: "/body-systems/:id", expose: true },
  async ({ id }: { id: number }): Promise<BodySystem> => {
    const row = await db.queryRow<BodySystem>`
      SELECT id, name, cfr_section, vbkb_slug, vbkb_url FROM body_systems WHERE id = ${id}
    `;
    if (!row) throw APIError.notFound("body system not found");
    return row;
  }
);

interface BodySystemInput {
  name: string;
  cfr_section?: string | null;
  vbkb_slug?: string | null;
  vbkb_url?: string | null;
}

export const createBodySystem = api(
  { method: "POST", path: "/body-systems", expose: true },
  async (p: BodySystemInput): Promise<BodySystem> => {
    const row = await db.queryRow<BodySystem>`
      INSERT INTO body_systems (name, cfr_section, vbkb_slug, vbkb_url)
      VALUES (${p.name}, ${p.cfr_section ?? null}, ${p.vbkb_slug ?? null}, ${p.vbkb_url ?? null})
      RETURNING id, name, cfr_section, vbkb_slug, vbkb_url
    `;
    return row!;
  }
);

interface UpdateBodySystemParams {
  id: number;
  name?: string;
  cfr_section?: string | null;
  vbkb_slug?: string | null;
  vbkb_url?: string | null;
}

export const updateBodySystem = api(
  { method: "PATCH", path: "/body-systems/:id", expose: true },
  async (p: UpdateBodySystemParams): Promise<BodySystem> => {
    const existing = await db.queryRow<BodySystem>`
      SELECT id, name, cfr_section, vbkb_slug, vbkb_url FROM body_systems WHERE id = ${p.id}
    `;
    if (!existing) throw APIError.notFound("body system not found");
    const row = await db.queryRow<BodySystem>`
      UPDATE body_systems
      SET name         = ${p.name ?? existing.name},
          cfr_section  = ${p.cfr_section !== undefined ? p.cfr_section : existing.cfr_section},
          vbkb_slug    = ${p.vbkb_slug !== undefined ? p.vbkb_slug : existing.vbkb_slug},
          vbkb_url     = ${p.vbkb_url !== undefined ? p.vbkb_url : existing.vbkb_url}
      WHERE id = ${p.id}
      RETURNING id, name, cfr_section, vbkb_slug, vbkb_url
    `;
    return row!;
  }
);

export const deleteBodySystem = api(
  { method: "DELETE", path: "/body-systems/:id", expose: true },
  async ({ id }: { id: number }): Promise<void> => {
    const row = await db.queryRow`SELECT id FROM body_systems WHERE id = ${id}`;
    if (!row) throw APIError.notFound("body system not found");
    await db.exec`DELETE FROM body_systems WHERE id = ${id}`;
  }
);
