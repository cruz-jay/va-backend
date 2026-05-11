CREATE TABLE body_systems (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  cfr_section TEXT,
  vbkb_slug TEXT,
  vbkb_url TEXT
);

CREATE TABLE cfr_sections (
  id SERIAL PRIMARY KEY,
  body_system_id INTEGER REFERENCES body_systems(id),
  section_number TEXT NOT NULL,
  title TEXT,
  content_text TEXT,
  content_xml TEXT,
  source_url TEXT,
  effective_date DATE
);

CREATE TABLE diagnostic_codes (
  id SERIAL PRIMARY KEY,
  code INTEGER NOT NULL,
  name TEXT NOT NULL,
  cfr_section_id INTEGER REFERENCES cfr_sections(id),
  body_system_id INTEGER REFERENCES body_systems(id),
  general_notes TEXT,
  source_url TEXT
);

CREATE TABLE conditions (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  diagnostic_code_id INTEGER REFERENCES diagnostic_codes(id),
  vbkb_url TEXT,
  vbkb_slug TEXT,
  vbkb_anchor TEXT
);

CREATE TABLE dc_crossrefs (
  id SERIAL PRIMARY KEY,
  from_code_id INTEGER NOT NULL REFERENCES diagnostic_codes(id),
  to_code_id INTEGER NOT NULL REFERENCES diagnostic_codes(id),
  ref_type TEXT NOT NULL,
  notes TEXT
);

CREATE TABLE rating_criteria (
  id SERIAL PRIMARY KEY,
  diagnostic_code_id INTEGER NOT NULL REFERENCES diagnostic_codes(id),
  rating_pct INTEGER NOT NULL,
  criteria_text TEXT
);

CREATE TABLE vbkb_articles (
  id SERIAL PRIMARY KEY,
  slug TEXT NOT NULL UNIQUE,
  title TEXT,
  body_system_id INTEGER REFERENCES body_systems(id),
  intro_markdown TEXT,
  pyramiding_notes TEXT,
  presumptive_notes TEXT,
  important_notes TEXT,
  full_markdown TEXT,
  source_url TEXT,
  scraped_at TIMESTAMPTZ
);

CREATE TABLE vbkb_dc_commentary (
  id SERIAL PRIMARY KEY,
  article_id INTEGER NOT NULL REFERENCES vbkb_articles(id),
  diagnostic_code_id INTEGER REFERENCES diagnostic_codes(id),
  dc_code_raw TEXT,
  section_heading TEXT,
  content_markdown TEXT,
  source_url TEXT
);
