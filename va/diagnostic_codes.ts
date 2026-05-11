import { api, APIError, Query } from "encore.dev/api";
import { db } from "./db";

interface DiagnosticCode {
  id: number;
  code: number;
  name: string;
  cfr_section_id: number | null;
  body_system_id: number | null;
  general_notes: string | null;
  source_url: string | null;
}

export const listDiagnosticCodes = api(
  { method: "GET", path: "/diagnostic-codes", expose: true },
  async (p: { body_system_id?: Query<number>; limit?: Query<number>; offset?: Query<number> }): Promise<{ diagnostic_codes: DiagnosticCode[]; total: number }> => {
    const limit = p.limit ?? 50;
    const offset = p.offset ?? 0;
    const rows = p.body_system_id != null
      ? db.query<DiagnosticCode>`
          SELECT id, code, name, cfr_section_id, body_system_id, general_notes, source_url
          FROM diagnostic_codes WHERE body_system_id = ${p.body_system_id} ORDER BY code LIMIT ${limit} OFFSET ${offset}
        `
      : db.query<DiagnosticCode>`
          SELECT id, code, name, cfr_section_id, body_system_id, general_notes, source_url
          FROM diagnostic_codes ORDER BY code LIMIT ${limit} OFFSET ${offset}
        `;
    const diagnostic_codes: DiagnosticCode[] = [];
    for await (const row of rows) diagnostic_codes.push(row);
    const count = p.body_system_id != null
      ? await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM diagnostic_codes WHERE body_system_id = ${p.body_system_id}`
      : await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM diagnostic_codes`;
    return { diagnostic_codes, total: count?.count ?? 0 };
  }
);

export const getDiagnosticCode = api(
  { method: "GET", path: "/diagnostic-codes/:id", expose: true },
  async ({ id }: { id: number }): Promise<DiagnosticCode> => {
    const row = await db.queryRow<DiagnosticCode>`
      SELECT id, code, name, cfr_section_id, body_system_id, general_notes, source_url
      FROM diagnostic_codes WHERE id = ${id}
    `;
    if (!row) throw APIError.notFound("diagnostic code not found");
    return row;
  }
);

export const getDiagnosticCodeByCode = api(
  { method: "GET", path: "/diagnostic-codes/by-code/:code", expose: true },
  async ({ code }: { code: number }): Promise<DiagnosticCode> => {
    const row = await db.queryRow<DiagnosticCode>`
      SELECT id, code, name, cfr_section_id, body_system_id, general_notes, source_url
      FROM diagnostic_codes WHERE code = ${code}
    `;
    if (!row) throw APIError.notFound("diagnostic code not found");
    return row;
  }
);

interface DiagnosticCodeInput {
  code: number;
  name: string;
  cfr_section_id?: number | null;
  body_system_id?: number | null;
  general_notes?: string | null;
  source_url?: string | null;
}

export const createDiagnosticCode = api(
  { method: "POST", path: "/diagnostic-codes", expose: true },
  async (p: DiagnosticCodeInput): Promise<DiagnosticCode> => {
    const row = await db.queryRow<DiagnosticCode>`
      INSERT INTO diagnostic_codes (code, name, cfr_section_id, body_system_id, general_notes, source_url)
      VALUES (${p.code}, ${p.name}, ${p.cfr_section_id ?? null}, ${p.body_system_id ?? null},
              ${p.general_notes ?? null}, ${p.source_url ?? null})
      RETURNING id, code, name, cfr_section_id, body_system_id, general_notes, source_url
    `;
    return row!;
  }
);

interface UpdateDiagnosticCodeParams {
  id: number;
  code?: number;
  name?: string;
  cfr_section_id?: number | null;
  body_system_id?: number | null;
  general_notes?: string | null;
  source_url?: string | null;
}

export const updateDiagnosticCode = api(
  { method: "PATCH", path: "/diagnostic-codes/:id", expose: true },
  async (p: UpdateDiagnosticCodeParams): Promise<DiagnosticCode> => {
    const e = await db.queryRow<DiagnosticCode>`
      SELECT id, code, name, cfr_section_id, body_system_id, general_notes, source_url
      FROM diagnostic_codes WHERE id = ${p.id}
    `;
    if (!e) throw APIError.notFound("diagnostic code not found");
    const row = await db.queryRow<DiagnosticCode>`
      UPDATE diagnostic_codes
      SET code           = ${p.code ?? e.code},
          name           = ${p.name ?? e.name},
          cfr_section_id = ${p.cfr_section_id !== undefined ? p.cfr_section_id : e.cfr_section_id},
          body_system_id = ${p.body_system_id !== undefined ? p.body_system_id : e.body_system_id},
          general_notes  = ${p.general_notes !== undefined ? p.general_notes : e.general_notes},
          source_url     = ${p.source_url !== undefined ? p.source_url : e.source_url}
      WHERE id = ${p.id}
      RETURNING id, code, name, cfr_section_id, body_system_id, general_notes, source_url
    `;
    return row!;
  }
);

export const deleteDiagnosticCode = api(
  { method: "DELETE", path: "/diagnostic-codes/:id", expose: true },
  async ({ id }: { id: number }): Promise<void> => {
    const row = await db.queryRow`SELECT id FROM diagnostic_codes WHERE id = ${id}`;
    if (!row) throw APIError.notFound("diagnostic code not found");
    await db.exec`DELETE FROM diagnostic_codes WHERE id = ${id}`;
  }
);
