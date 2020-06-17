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

3. Find the MIN first_name, the county, and a count of all users in that county for counties with more than 10 users. There will be four results. List the last one. 
  * Hint: MIN, COUNT, JOIN, GROUP BY, HAVING


## Query Responses

1. Sums
  * AK: 1422 (count = 6)
  * CT 999 (count = 5)
  * TX: 7908 (count = 32)
  * WY: 1271 (count = 3)

2.
  ```
  select 
      substring(phone1,1,3) as p1
      , count(substring(phone1,1,3)) as p1_count
      , substring(phone2,1,3) as p2
      , count(substring(phone2,1,3)) as p2_count
  from usersContact 
  group by 1, 3 
  order by 2 desc
  limit 1
  ```
  * Area code: 973

3.
```
select
    min(first_name)
    , county
    , count(county) users
from usersAddress a
left join users u
on a.user_id = u.id
group by 2
having users > 10
```
  * first_name: Alaine
  * county: Orange
  * county total: 11

  ## Part 3 - Entity Relationship (ER) Diagram 

1. In the MySQL Workbench menu, select Database -> Reverse Engineer. A dialog box should have appeared.
2. In the first dropdown (stored connection), select the connect to your instance.
3. Click "continue" three times until a list of databases appears. There should only be one ("admin").
4. Select the "admin" database and continue accepting all other defaults
5. You should see your ER diagram displayed.
6. Hover over the tables to see the relationships (usersContact and usersAddress point back to users).
7. Click around the diagram and discover other information about your tables.

EER Diagram:
https://github.com/coastlines/311_wk3_day2_advanced_select/blob/master/EER_Diagram.mwb
