CREATE TYPE article_category AS ENUM (
    'Listicle',
    'How-to',
    'News',
    'Interview',
    'Story'
);

ALTER TABLE blogful_articles
  ADD COLUMN
    style article_category;
ALTER TABLE blogful_articles DROP COLUMN IF EXISTS style;

DROP TYPE IF EXISTS article_category;