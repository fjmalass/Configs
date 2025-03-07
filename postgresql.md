# Postgres extensions

## From [Fireship](https://www.youtube.com/watch?v=3JW732GrMdg) on 2025-03-06
 `Awesome PostGres`
 `schema less` : `jsonb`  with the `->>`
could use [`neon.text`](neon.tech)


|-----------------------|--------------------------------------------------------|
| Type                  | Extension                                              |
|-----------------------|--------------------------------------------------------|
| `cron job`            | `pg_cron` (with schedule and name)                     |
| `redis like`          | use `shared_buffer`  with `vaccum deamon` to clean up  |
| `rag` `rag embedding` | `pgai`  `pgvector`                                     |
| `search text`         | `tsvector`  and reverse search with `@@`               |
| `graphql`             | `pg_graphql`                                           |
| `realtime sync`       | `electric`  sync to have fresh data without websockets |
| `auth`                | `pgcrypto` for password `pgjwt`  (sessions)            |
| `telemetry`           | `pg_mooncake`                                          |
| `Rest`                | `postrest`                                             |
|-----------------------|--------------------------------------------------------|
