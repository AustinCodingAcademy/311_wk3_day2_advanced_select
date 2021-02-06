# Advanced SELECT

## Setup

You should have already created a Google Cloud account, created an instance and built a database (yesterday), as well as installed MySQL Workbench and made a connection to the database you've created.. In this lesson we will practice querying data.

* Open MySQL Workbench

## Part 1 - Initialize data

We'll use the same database as we did yesterday but this new initialization will delete or `DROP` our existing table of `users` and replace it with three new tables: `usersAddress`, `users`, & `usersContact`. To do this:

* Make sure you've selected the "admin" database in MySQL Workbench

* Create a new query tab
  * Click the button on the top left that has a SQL file with a "plus" icon on it

* Click the folder icon in your query tab to open a new file

* Select the "initialize.sql" script that lives in this repo (you've hopefully cloned it into your 311-JSDev folder or somewhere else)

* Click the lightning bolt icon to run the query

* If you refresh your schemas you should see a "users", "usersContact" and "usersAddress" table

## Part 2 - Query data

We are going to run a couple SQL queries and put the answers in the "Query Responses" section of this README. The query instructions are intentionally written in plain english. It's up to you to translate that into a SELECT statement.

1. Get a sum of all the user_ids from the `usersAddress` table grouped by state. Enter the values for the specific states below.

2. Find the most popular area code in the `usersContact` table. 
  * Hint: SUBSTR, GROUP BY

3. Find the MIN first_name, the county, and a count of all users in that county for counties with more than 10 users. There will be four results. List the last one. 
  * Hint: MIN, COUNT, JOIN, GROUP BY, HAVING


## Query Responses

1. Sums
  * AK: 1422  (sum of 6 user_ids)
  * CT: 99    (sum of 5 user_ids)
  * TX: 7908  (sum of 32 user_ids)
  * WY: 1271  (sum of 3 user_ids)
  SELECT state, SUM(user_id) FROM usersAddress WHERE state = "example"
  *Accidentally did "COUNT" at first before I re-read the question... so I went ahead and included the count of users_ids since I had it. 

2.
  * Area code: 973
  SELECT COUNT(*), SUBSTRING(phone1, 1, 3) AS area_code FROM usersContact GROUP BY area_code

3.
  * first_name:	Alaine
  * county: Orange
  * county total: 11
  SELECT MIN(users.first_name), county, COUNT(*) AS userCount FROM usersAddress JOIN users ON usersAddress.user_id=users.id GROUP BY county HAVING userCount > 10



## Summary

We're starting to get pretty advanced with our SQL queries. Keep researching other advanced SELECT statements and get ready to foray into [INSERTs and UPDATEs and DELETEs, oh CRUD](https://www.youtube.com/watch?v=-HrfbV16-FQ)!.
