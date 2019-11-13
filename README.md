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

SELECT state, SUM(user_id) FROM usersAddress
WHERE state = 'AK' or state = 'CT' or state = 'TX' or state = 'WY'
group by state

2. Find the most popular area code in the `usersContact` table. 
  * Hint: SUBSTR, GROUP BY

SELECT substring(phone1, 1, 3) area_code, count(*)
FROM usersContact
group by area_code
order by
count(*) desc

3. Find the MIN first_name, the county, and a count of all users in that county for counties with more than 10 users. There will be four results. List the last one. 
  * Hint: MIN, COUNT, JOIN, GROUP BY, HAVING

SELECT min(first_name), county, count(*)
FROM users
JOIN usersAddress
WHERE users.id = usersAddress.id
group by county
HAVING count(*) > 10


## Query Responses

1. Sums
  * AK:
  * CT
  * TX:
  * WY:

2.
  * Area code:

3.
  * first_name:
  * county:
  * county total:


## Summary

We're starting to get pretty advanced with our SQL queries. Keep researching other advanced SELECT statements and get ready to foray into INSERT, UPDATE and DELETE.