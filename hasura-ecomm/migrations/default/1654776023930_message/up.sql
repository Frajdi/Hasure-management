CREATE TABLE IF NOT EXISTS  "public"."message"(

    "id" INTEGER,

     "user_id" INTEGER NOT NULL,

     "message_text" TEXT NOT NULL,

     "chatroom_id" INTEGER NOT NULL,

     "timestamp" DATE,

     CONSTRAINT "message_pkey" PRIMARY KEY ("id")



);

ALTER TABLE ONLY "public"."message"

ADD CONSTRAINT "message_id_fkey"FOREIGN KEY (chatroom_id) REFERENCES chatroom(id)

ON UPDATE CASCADE

ON DELETE CASCADE

NOT DEFERRABLE;



ALTER TABLE ONLY "public"."message"

ADD CONSTRAINT "mess_chatroom_id"FOREIGN KEY (user_id) REFERENCES users(id)

ON UPDATE CASCADE

ON DELETE CASCADE

NOT DEFERRABLE;
