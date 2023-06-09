BEGIN;

DROP TABLE IF EXISTS "users",
"addresses",
"articles",
"brands",
"categories",
"articles_has_users";

ALTER TABLE IF EXISTS "articles_has_users" DROP CONSTRAINT articles_has_users_articles_id_fkey;
ALTER TABLE IF EXISTS "article_has_category" DROP CONSTRAINT article_has_category_category_id_fkey;

CREATE TABLE "addresses" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "street" TEXT NOT NULL,
  "number" TEXT NOT NULL,
  "floor" TEXT,
  "zip" TEXT NOT NULL,
  "city" TEXT NOT NULL,
  "country" TEXT NOT NULL,
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ
);

CREATE TABLE "users" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "firstname" TEXT NOT NULL,
  "lastname" TEXT NOT NULL,
  "email" TEXT NOT NULL,
  "password" TEXT NOT NULL,
  "role" TEXT NOT NULL DEFAULT 'user',
  "address_id" INTEGER,
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ
);

CREATE TABLE "articles_has_users" (
  "user_id" INTEGER NOT NULL,
  "article_id" INTEGER NOT NULL,
  PRIMARY KEY ("user_id", "article_id")
);

CREATE TABLE "articles" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  "description" TEXT,
  "price" DECIMAL(10, 2) NOT NULL,
  "image_url" TEXT,
  "category_id" INTEGER NOT NULL,
  "brand_id" INTEGER NOT NULL,
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ
);

CREATE TABLE "categories" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  "description" TEXT,
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ
);

CREATE TABLE "brands" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMPTZ
);

ALTER TABLE "users" ADD FOREIGN KEY (address_id) REFERENCES "addresses" (id);
ALTER TABLE "articles" ADD FOREIGN KEY (category_id) REFERENCES "categories" (id);
ALTER TABLE "articles" ADD FOREIGN KEY (brand_id) REFERENCES "brands" (id);
ALTER TABLE "articles_has_users" ADD FOREIGN KEY (user_id) REFERENCES "users" (id);
ALTER TABLE "articles_has_users" ADD FOREIGN KEY (article_id) REFERENCES "articles" (id);

COMMIT;