-- Advanced Select Assignment
-- Justin Essler - 03/08/20

-- SELECT * FROM users;

-- Just practicing the concept
SELECT 
	users.first_name,
    users.last_name,
    usersAddress.city,
    usersAddress.state,
    usersContact.email
FROM
	users
JOIN usersContact, usersAddress 
WHERE
	users.id = usersContact.user_id = usersAddress.user_id;
-- End of - Just practicing the concept


-- Start of the Classwork Assignment

-- #1
-- Get a sum of all the user_ids from the `usersAddress` table grouped by state. 
-- AK, CT, TX, WY
--  // syntax-notes //
-- SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;

SELECT
	usersAddress.state,
	SUM(id)
FROM
	usersAddress
GROUP BY state;


-- #2
-- Find the most popular area code in the `usersContact` table. 
-- Hint: SUBSTR, GROUP BY
--  // syntax-notes //
-- SUBSTR(string, start, length) ... or ...
-- SUBSTR(string FROM start FOR length)
-- Or use RIGHT/Left because the area code is the first three of phone1

SELECT
	LEFT(phone1, 3),
	COUNT(LEFT(phone1, 3))
FROM usersContact
GROUP BY LEFT(phone1, 3) DESC;


-- #3
-- Find the MIN first_name, the county, and a count of all users in that county for counties with more than 10 users. 
-- There will be four results. List the last one. 
-- Hint: MIN, COUNT, JOIN, GROUP BY, HAVING
--  // syntax-notes //
-- MIN(expression)
-- SELECT MIN(Price) AS SmallestPrice FROM Products;
-- How can you possibly find the MIN of a first name?


SELECT
	MIN(first_name),
    COUNT('users'),
    usersAddress.county
FROM users
JOIN usersAddress
GROUP BY usersAddress.county
HAVING COUNT(usersAddress.county>10);


-- End of the assignment
