# Advanced SELECT

## Setup

You should have created a Google Cloud account, installed MySQL Workbench and made a connection to your database. In this lesson we will practice querying data.

* Open MySQL Workbench

## Part 1 - Initialize data

* Make sure you've selected the "admin" database

* Create a new query tab
  * Click the button on the top left that has a SQL file with a "plus" icon on it

* Click the folder icon in your query tab to open a new file

* Select the "initialize.sql" script that lives in this repo

* Click the lightning bolt icon to run the query

* If you refresh your schemas you should see a "users", "usersContact" and "usersAddress" table

## Part 2 - Query data

We are going to run a couple SQL queries and put the answers in the "Query Responses" section of this README. The query instructions are intentionally written in plain english. It's up to you to translate that into a SELECT statement.

1. Get a sum of all the user_ids from the `usersAddress` table grouped by state. Enter the values for the specific states below.

2. Find the most popular area code in the `usersContact` table. 
  * Hint: SUBSTR, GROUP BY

   SELECT SUM(user_id) 
-- FROM usersAddress
-- WHERE state = "WY"
-- GROUP BY state

  SELECT phone2 AS popularity
-- FROM usersContact 
-- GROUP BY phone2
-- ORDER BY popularity limit 10

3. Find the MIN first_name, the county, and a count of all users in that county for counties with more than 10 users. There will be four results. List the last one. 
  * Hint: MIN, COUNT, JOIN, GROUP BY, HAVING

select min(first_name), county, count(*) as tally
from users
join usersAddress 
where usersAddress.id = users.id
group by county 
having tally>10



## Query Responses

1. Sums
  * AK: 1422
  * CT: 999
  * TX: 7908
  * WY: 1271

2.
  * Area code: 201

3.
  * first_name: Avery
  * county: orange
  * county total: 11


## Summary

We're starting to get pretty advanced with our SQL queries. Keep researching other advanced SELECT statements and get ready to foray into INSERT, UPDATE and DELETE.