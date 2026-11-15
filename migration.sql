-- Run once, after schema.sql. Safe to run again.
alter table users alter column password_hash drop not null;      -- Google-only users have no password
alter table users add column if not exists google_id text unique; -- Google's stable user id
alter table users add column if not exists name text;
alter table users add column if not exists picture text;
