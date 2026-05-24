-- MTRX Library - Storage para referencias de prompts
-- Execute no Supabase SQL Editor se quiser usar upload publico via bucket.

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values (
  'references',
  'references',
  true,
  52428800,
  array['image/png','image/jpeg','image/webp','image/gif','audio/mpeg','audio/mp4','audio/wav','audio/ogg','video/mp4','video/quicktime','video/webm']
)
on conflict (id) do update set
  public = excluded.public,
  file_size_limit = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

drop policy if exists "MTRX public read references" on storage.objects;
create policy "MTRX public read references"
on storage.objects for select
using (bucket_id = 'references');

drop policy if exists "MTRX public upload references" on storage.objects;
create policy "MTRX public upload references"
on storage.objects for insert
with check (bucket_id = 'references');
