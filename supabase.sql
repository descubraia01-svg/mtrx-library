-- MTRX LIBRARY v1
-- Run this in Supabase SQL Editor for project zqzdjcpaqtasiatbjxhs.

create table if not exists public.mtrx_library_state (
  key text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.mtrx_library_state enable row level security;

drop policy if exists "mtrx library public read" on public.mtrx_library_state;
create policy "mtrx library public read"
on public.mtrx_library_state
for select
to anon
using (true);

drop policy if exists "mtrx library public insert" on public.mtrx_library_state;
create policy "mtrx library public insert"
on public.mtrx_library_state
for insert
to anon
with check (key = 'main');

drop policy if exists "mtrx library public update" on public.mtrx_library_state;
create policy "mtrx library public update"
on public.mtrx_library_state
for update
to anon
using (key = 'main')
with check (key = 'main');

create or replace function public.set_mtrx_library_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists set_mtrx_library_updated_at on public.mtrx_library_state;
create trigger set_mtrx_library_updated_at
before update on public.mtrx_library_state
for each row
execute function public.set_mtrx_library_updated_at();

-- Security note:
-- This keeps the current static-site/admin-code model working online.
-- For real admin-only writes, migrate to Supabase Auth and restrict insert/update
-- policies to authenticated admin users.
