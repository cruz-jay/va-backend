# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
encore run          # Start the app locally (dashboard at http://localhost:9400)
npm test            # Run tests with Vitest
```

Run a single test file:
```bash
npx vitest run hello/hello.test.ts
```

Database utilities (requires a running `encore run`):
```bash
encore db shell <db-name>       # Open psql shell
encore db conn-uri <db-name>    # Get connection string
encore db reset <service-name>  # Reset a service's database
```

## Architecture

This is an **Encore.ts** backend (`encore.dev`) for VA disability rating data. The app ID is `va-backend-95p2`.

### Service Structure

Each subdirectory containing an `encore.service.ts` file is a distinct Encore service. Services cannot be nested.

```
va/
  encore.service.ts       ← declares the "va" service
  db.ts                   ← SQLDatabase instance shared by all endpoint files
  body_systems.ts
  cfr_sections.ts
  conditions.ts
  diagnostic_codes.ts
  dc_crossrefs.ts
  rating_criteria.ts
  vbkb_articles.ts
  vbkb_dc_commentary.ts
  migrations/
    001_init.up.sql       ← full schema (all 8 tables)
```

### Key Patterns

**Defining an endpoint:**
```ts
import { api } from "encore.dev/api";
export const myEndpoint = api({ method: "GET", expose: true, path: "/path" }, async (): Promise<Response> => { ... });
```

**Calling another service internally:**
```ts
import { hello } from "~encore/clients";  // generated at encore.gen/
const resp = await hello.ping({ name: "World" });
```

**Auth handler** lives in a service alongside a `Gateway` export and uses `authHandler` from `encore.dev/auth`. Auth data is accessed via `getAuthData()` from `~encore/auth`.

**Database** — declare a `SQLDatabase` at module level and place migrations in a `migrations/` subdirectory named `001_name.up.sql`, `002_name.up.sql`, etc.

### Domain Data

`csv_preview/` contains the reference data that will populate the database:
- `conditions.csv` — medical conditions mapped to diagnostic codes and VBKB URLs
- `diagnostic_codes.csv` — VA diagnostic codes with CFR section and body system references
- `rating_criteria.csv` — disability rating percentages per condition
- `cfr_sections.csv` / `body_systems.csv` — lookup tables
- `vbkb_articles.csv` / `vbkb_dc_commentary.csv` — Veterans Benefits Knowledge Base content

### TypeScript Config

- Target: ES2022, strict mode enabled
- `~encore/*` path alias resolves to `encore.gen/` (auto-generated, do not edit)
- `moduleResolution: "bundler"` — use `import`, never `require`
