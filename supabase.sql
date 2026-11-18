-- Run once in Supabase: SQL Editor -> New query -> paste -> Run
create table if not exists site (id int primary key, data jsonb not null);
alter table site enable row level security;
create policy "anyone can read site" on site for select using (true);
create policy "admin can write site" on site for all to authenticated using (true) with check (true);
insert into storage.buckets (id, name, public) values ('media','media',true) on conflict (id) do nothing;
create policy "anyone can view media" on storage.objects for select using (bucket_id = 'media');
create policy "admin can upload media" on storage.objects for insert to authenticated with check (bucket_id = 'media');
create policy "admin can delete media" on storage.objects for delete to authenticated using (bucket_id = 'media');
