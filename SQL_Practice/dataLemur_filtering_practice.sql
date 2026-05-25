-- You have a table of 1000 customer records from a small-business based in Australia.

-- Find all customers who are between the ages of 18 and 22 (inclusive), live in either Victoria, Tasmania, Queensland, their gender isn't "n/a", and their name starts with either 'A' or 'B'.

-- customers Schema:
-- Column Name	Type
-- customer_id	integer
-- customer_name	string
-- gender	string
-- age	integer
-- zip_code	integer
-- city	string
-- state	string

SELECT * 
FROM customers 
WHERE age BETWEEN 18 AND 22
  AND state IN('Victoria', 'Tasmania', 'Queensland')
  AND gender != 'n/a'
  AND (customer_name LIKE 'A%' OR customer_name LIKE 'B%')
LIMIT 20;

-- First I want to write down all the conditions neatly
-- age between 18 and 22 (inclusive)
-- live in either Victoria, Tasmania, Queensland
-- their gender isnt "n/a"
-- their name starts with either A or B

-- everything is connected with AND
-- age use BETWEEN
-- location use IN
-- gender use != or NOT 
-- name use (LIKE OR LIKE)

-- few mistakes: first mistake was mistaking second conditions to be city not state
-- second mistake was forgetting that strings are case sensitive and name should have 
-- started the capical A and B not a and b.