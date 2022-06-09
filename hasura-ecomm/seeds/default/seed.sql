INSERT INTO "public"."users" ("id", "name")

-- Describe the dataset:

SELECT
CONCAT('u',"u") AS "id",
CONCAT('Name',"u") AS "name"


-- Set the size of the dataset:
FROM generate_series(1, 10) AS "u"


-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "user_pkey"
DO UPDATE SET
"name" = EXCLUDED."name";



 INSERT INTO "public"."chatroom" ("id", "user_id")

-- Describe the dataset:
SELECT
CONCAT('c', "u") AS "id",
CONCAT('u', floor(random() * (10 - 1 + 1) + 1)) AS "user_id"

-- Set the size of the dataset:
FROM generate_series(1, 10) AS "u"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "chatroom_pkey"
DO UPDATE SET
"user_id" = EXCLUDED."user_id";


INSERT INTO "public"."messages" ("id", "user_id","room_id","message","created_at")

-- Describe the dataset:
SELECT
CONCAT('m', "u") AS "id",
CONCAT('u', floor(random() * (10 - 1 + 1) + 1)) AS "user_id",
CONCAT('c', floor(random() * (10 - 1 + 1) + 1)) AS "room_id",
CONCAT('message', "u") AS "message", now()

-- Set the size of the dataset:
FROM generate_series(1, 10) AS "u"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "messages_pkey"
DO UPDATE SET
"user_id" = EXCLUDED."user_id",
"room_id" = EXCLUDED."room_id",
"message" = EXCLUDED."message"