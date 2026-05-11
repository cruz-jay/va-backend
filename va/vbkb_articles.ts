import { api, APIError, Query } from "encore.dev/api";
import { db } from "./db";

interface VbkbArticle {
  id: number;
  slug: string;
  title: string | null;
  body_system_id: number | null;
  intro_markdown: string | null;
  pyramiding_notes: string | null;
  presumptive_notes: string | null;
  important_notes: string | null;
  full_markdown: string | null;
  source_url: string | null;
  scraped_at: string | null;
}

export const listVbkbArticles = api(
  { method: "GET", path: "/vbkb-articles", expose: true },
  async (p: { body_system_id?: Query<number>; limit?: Query<number>; offset?: Query<number> }): Promise<{ vbkb_articles: VbkbArticle[]; total: number }> => {
    const limit = p.limit ?? 50;
    const offset = p.offset ?? 0;
    const rows = p.body_system_id != null
      ? db.query<VbkbArticle>`
          SELECT id, slug, title, body_system_id, intro_markdown, pyramiding_notes, presumptive_notes,
                 important_notes, full_markdown, source_url, scraped_at::text
          FROM vbkb_articles WHERE body_system_id = ${p.body_system_id} ORDER BY slug LIMIT ${limit} OFFSET ${offset}
        `
      : db.query<VbkbArticle>`
          SELECT id, slug, title, body_system_id, intro_markdown, pyramiding_notes, presumptive_notes,
                 important_notes, full_markdown, source_url, scraped_at::text
          FROM vbkb_articles ORDER BY slug LIMIT ${limit} OFFSET ${offset}
        `;
    const vbkb_articles: VbkbArticle[] = [];
    for await (const row of rows) vbkb_articles.push(row);
    const count = p.body_system_id != null
      ? await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM vbkb_articles WHERE body_system_id = ${p.body_system_id}`
      : await db.queryRow<{ count: number }>`SELECT COUNT(*)::int AS count FROM vbkb_articles`;
    return { vbkb_articles, total: count?.count ?? 0 };
  }
);

export const getVbkbArticle = api(
  { method: "GET", path: "/vbkb-articles/:id", expose: true },
  async ({ id }: { id: number }): Promise<VbkbArticle> => {
    const row = await db.queryRow<VbkbArticle>`
      SELECT id, slug, title, body_system_id, intro_markdown, pyramiding_notes, presumptive_notes,
             important_notes, full_markdown, source_url, scraped_at::text
      FROM vbkb_articles WHERE id = ${id}
    `;
    if (!row) throw APIError.notFound("VBKB article not found");
    return row;
  }
);

export const getVbkbArticleBySlug = api(
  { method: "GET", path: "/vbkb-articles/by-slug/:slug", expose: true },
  async ({ slug }: { slug: string }): Promise<VbkbArticle> => {
    const row = await db.queryRow<VbkbArticle>`
      SELECT id, slug, title, body_system_id, intro_markdown, pyramiding_notes, presumptive_notes,
             important_notes, full_markdown, source_url, scraped_at::text
      FROM vbkb_articles WHERE slug = ${slug}
    `;
    if (!row) throw APIError.notFound("VBKB article not found");
    return row;
  }
);

interface VbkbArticleInput {
  slug: string;
  title?: string | null;
  body_system_id?: number | null;
  intro_markdown?: string | null;
  pyramiding_notes?: string | null;
  presumptive_notes?: string | null;
  important_notes?: string | null;
  full_markdown?: string | null;
  source_url?: string | null;
  scraped_at?: string | null;
}

export const createVbkbArticle = api(
  { method: "POST", path: "/vbkb-articles", expose: true },
  async (p: VbkbArticleInput): Promise<VbkbArticle> => {
    const row = await db.queryRow<VbkbArticle>`
      INSERT INTO vbkb_articles (slug, title, body_system_id, intro_markdown, pyramiding_notes,
                                  presumptive_notes, important_notes, full_markdown, source_url, scraped_at)
      VALUES (${p.slug}, ${p.title ?? null}, ${p.body_system_id ?? null}, ${p.intro_markdown ?? null},
              ${p.pyramiding_notes ?? null}, ${p.presumptive_notes ?? null}, ${p.important_notes ?? null},
              ${p.full_markdown ?? null}, ${p.source_url ?? null}, ${p.scraped_at ?? null})
      RETURNING id, slug, title, body_system_id, intro_markdown, pyramiding_notes, presumptive_notes,
                important_notes, full_markdown, source_url, scraped_at::text
    `;
    return row!;
  }
);

interface UpdateVbkbArticleParams {
  id: number;
  slug?: string;
  title?: string | null;
  body_system_id?: number | null;
  intro_markdown?: string | null;
  pyramiding_notes?: string | null;
  presumptive_notes?: string | null;
  important_notes?: string | null;
  full_markdown?: string | null;
  source_url?: string | null;
  scraped_at?: string | null;
}

export const updateVbkbArticle = api(
  { method: "PATCH", path: "/vbkb-articles/:id", expose: true },
  async (p: UpdateVbkbArticleParams): Promise<VbkbArticle> => {
    const e = await db.queryRow<VbkbArticle>`
      SELECT id, slug, title, body_system_id, intro_markdown, pyramiding_notes, presumptive_notes,
             important_notes, full_markdown, source_url, scraped_at::text
      FROM vbkb_articles WHERE id = ${p.id}
    `;
    if (!e) throw APIError.notFound("VBKB article not found");
    const row = await db.queryRow<VbkbArticle>`
      UPDATE vbkb_articles
      SET slug              = ${p.slug ?? e.slug},
          title             = ${p.title !== undefined ? p.title : e.title},
          body_system_id    = ${p.body_system_id !== undefined ? p.body_system_id : e.body_system_id},
          intro_markdown    = ${p.intro_markdown !== undefined ? p.intro_markdown : e.intro_markdown},
          pyramiding_notes  = ${p.pyramiding_notes !== undefined ? p.pyramiding_notes : e.pyramiding_notes},
          presumptive_notes = ${p.presumptive_notes !== undefined ? p.presumptive_notes : e.presumptive_notes},
          important_notes   = ${p.important_notes !== undefined ? p.important_notes : e.important_notes},
          full_markdown     = ${p.full_markdown !== undefined ? p.full_markdown : e.full_markdown},
          source_url        = ${p.source_url !== undefined ? p.source_url : e.source_url},
          scraped_at        = ${p.scraped_at !== undefined ? p.scraped_at : e.scraped_at}
      WHERE id = ${p.id}
      RETURNING id, slug, title, body_system_id, intro_markdown, pyramiding_notes, presumptive_notes,
                important_notes, full_markdown, source_url, scraped_at::text
    `;
    return row!;
  }
);

export const deleteVbkbArticle = api(
  { method: "DELETE", path: "/vbkb-articles/:id", expose: true },
  async ({ id }: { id: number }): Promise<void> => {
    const row = await db.queryRow`SELECT id FROM vbkb_articles WHERE id = ${id}`;
    if (!row) throw APIError.notFound("VBKB article not found");
    await db.exec`DELETE FROM vbkb_articles WHERE id = ${id}`;
  }
);
