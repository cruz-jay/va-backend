import { api, APIError, Query } from "encore.dev/api";
import { db } from "./db";

interface RatingCriteria {
  id: number;
  diagnostic_code_id: number;
  rating_pct: number;
  criteria_text: string | null;
}

export const listRatingCriteria = api(
  { method: "GET", path: "/rating-criteria", expose: true },
  async (p: { diagnostic_code_id?: Query<number>; limit?: Query<number>; offset?: Query<number> }): Promise<{ rating_criteria: RatingCriteria[]; total: number }> => {
    const limit = p.limit ?? 50;
    const offset = p.offset ?? 0;
    const rows = p.diagnostic_code_id != null
      ? db.query<RatingCriteria>`
          SELECT id, diagnostic_code_id, rating_pct, criteria_text
          FROM rating_criteria WHERE diagnostic_code_id = ${p.diagnostic_code_id}
          ORDER BY rating_pct DESC LIMIT ${limit} OFFSET ${offset}
        `
      : db.query<RatingCriteria>`
          SELECT id, diagnostic_code_id, rating_pct, criteria_text
          FROM rating_criteria ORDER BY diagnostic_code_id, rating_pct DESC LIMIT ${limit} OFFSET ${offset}
        `;
    const rating_criteria: RatingCriteria[] = [];
    for await (const row of rows) rating_criteria.push(row);
    const count = p.diagnostic_code_id != null
      ? await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM rating_criteria WHERE diagnostic_code_id = ${p.diagnostic_code_id}`
      : await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM rating_criteria`;
    return { rating_criteria, total: count?.count ?? 0 };
  }
);

export const getRatingCriteria = api(
  { method: "GET", path: "/rating-criteria/:id", expose: true },
  async ({ id }: { id: number }): Promise<RatingCriteria> => {
    const row = await db.queryRow<RatingCriteria>`
      SELECT id, diagnostic_code_id, rating_pct, criteria_text FROM rating_criteria WHERE id = ${id}
    `;
    if (!row) throw APIError.notFound("rating criteria not found");
    return row;
  }
);

interface RatingCriteriaInput {
  diagnostic_code_id: number;
  rating_pct: number;
  criteria_text?: string | null;
}

export const createRatingCriteria = api(
  { method: "POST", path: "/rating-criteria", expose: true },
  async (p: RatingCriteriaInput): Promise<RatingCriteria> => {
    const row = await db.queryRow<RatingCriteria>`
      INSERT INTO rating_criteria (diagnostic_code_id, rating_pct, criteria_text)
      VALUES (${p.diagnostic_code_id}, ${p.rating_pct}, ${p.criteria_text ?? null})
      RETURNING id, diagnostic_code_id, rating_pct, criteria_text
    `;
    return row!;
  }
);

interface UpdateRatingCriteriaParams {
  id: number;
  diagnostic_code_id?: number;
  rating_pct?: number;
  criteria_text?: string | null;
}

export const updateRatingCriteria = api(
  { method: "PATCH", path: "/rating-criteria/:id", expose: true },
  async (p: UpdateRatingCriteriaParams): Promise<RatingCriteria> => {
    const e = await db.queryRow<RatingCriteria>`
      SELECT id, diagnostic_code_id, rating_pct, criteria_text FROM rating_criteria WHERE id = ${p.id}
    `;
    if (!e) throw APIError.notFound("rating criteria not found");
    const row = await db.queryRow<RatingCriteria>`
      UPDATE rating_criteria
      SET diagnostic_code_id = ${p.diagnostic_code_id ?? e.diagnostic_code_id},
          rating_pct         = ${p.rating_pct ?? e.rating_pct},
          criteria_text      = ${p.criteria_text !== undefined ? p.criteria_text : e.criteria_text}
      WHERE id = ${p.id}
      RETURNING id, diagnostic_code_id, rating_pct, criteria_text
    `;
    return row!;
  }
);

export const deleteRatingCriteria = api(
  { method: "DELETE", path: "/rating-criteria/:id", expose: true },
  async ({ id }: { id: number }): Promise<void> => {
    const row = await db.queryRow`SELECT id FROM rating_criteria WHERE id = ${id}`;
    if (!row) throw APIError.notFound("rating criteria not found");
    await db.exec`DELETE FROM rating_criteria WHERE id = ${id}`;
  }
);
