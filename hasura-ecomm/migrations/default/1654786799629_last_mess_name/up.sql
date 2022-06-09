Create materialized view "last_mess_name" as 
SELECT name,messages
FROM users
FULL JOIN messages 
    ON messages.user_id = users.id
ORDER BY message DESC;