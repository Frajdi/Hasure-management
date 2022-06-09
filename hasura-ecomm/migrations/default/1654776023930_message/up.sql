CREATE TABLE IF NOT EXISTS  "public"."message"(

    "id" INTEGER,

     "user_id" INTEGER NOT NULL,

     "message_text" TEXT NOT NULL,

     "chatroom_id" INTEGER NOT NULL,

     "timestamp" DATE,

     CONSTRAINT "message_pkey" PRIMARY KEY ("id")



);
