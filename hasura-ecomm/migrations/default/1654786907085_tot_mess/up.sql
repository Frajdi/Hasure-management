Create materialized view "tot_mess"as 
SELECT 
   COUNT("message") 
FROM 
    messages;