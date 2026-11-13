-- SınıfKitap: aynı kitabın aynı şubede birden fazla fiziksel nüshasına izin ver.
-- class_books her fiziksel kopyayı temsil eder; barkod benzersizliği mevcut kısmi indeksle korunur.
alter table public.class_books
  drop constraint if exists class_books_class_id_book_id_key;

create index if not exists idx_class_books_class_book
  on public.class_books (class_id, book_id);
