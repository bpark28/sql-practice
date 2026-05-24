-- Table: Customer

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+
-- In SQL, id is the primary key column for this table.
-- Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
 

-- Find the names of the customer that are either:

-- referred by any customer with id != 2.
-- not referred by any customer.
-- Return the result table in any order.

-- The result format is in the following example.

 

-- Example 1:

-- Input: 
-- Customer table:
-- +----+------+------------+
-- | id | name | referee_id |
-- +----+------+------------+
-- | 1  | Will | null       |
-- | 2  | Jane | null       |
-- | 3  | Alex | 2          |
-- | 4  | Bill | null       |
-- | 5  | Zack | 1          |
-- | 6  | Mark | 2          |
-- +----+------+------------+
-- Output: 
-- +------+
-- | name |
-- +------+
-- | Will |
-- | Jane |
-- | Bill |
-- | Zack |
-- +------+ 

SELECT name
FROM customer
WHERE referee_id != 2
    OR referee_id IS null;
    
-- First, Im taking a look at the two conditions that are given to me, referred by any customer with id != 2 or not referred by any customer. so I will be using WHERE and OR for the conditions.
-- looking at the example output, I will be showing name column so for SELECT I will use column name.
-- looking back at the description, instead of id != 2 I needed to use referee_id != 2 along with referee_id = null instead of id = null.
-- use IS operator when comparing null or boolean