CREATE TABLE IF NOT EXISTS "public"."chatroom" (
"id"INTEGER,
"user_id"INTEGER NOT NULL,
"chat_name"TEXT,
CONSTRAINT"chatroom_pkey"PRIMARY KEY ("id")
);