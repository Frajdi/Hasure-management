CREATE TABLE IF NOT EXISTS "public"."chatroom" (
"id"INTEGER,
"user_id"INTEGER NOT NULL,
"chat_name"TEXT,
CONSTRAINT"chatroom_pkey"PRIMARY KEY ("id")
);

ALTER TABLE ONLY "public"."chatroom"
ADD CONSTRAINT "chatroom_id_fkey"FOREIGN KEY(user_id) REFERENCES users(id)
ON UPDATE CASCADE
ON DELETE CASCADE
NOT DEFERRABLE;