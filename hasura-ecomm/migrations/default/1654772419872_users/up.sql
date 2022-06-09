
CREATE TABLE if not exists "public"."users" (
  "id" TEXT,
  "name" TEXT NOT NULL,
  "created-at" TIMESTAMPTZ default NOW() NOT NULL,
  CONSTRAINT "user_pkey" PRIMARY KEY ("id")
)