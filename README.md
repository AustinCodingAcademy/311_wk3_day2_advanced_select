# SELECT Practice

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

* If you refresh your schemas you should see a "users" table

## Part 2 - Query data

We are going to run a couple SQL queries and put the answers in the "Query Responses" section of this README. The query instructions are intentionally written in plain english. It's up to you to translate that in a SELECT statement.

1. Select all fields from users where the city equals Chicago

2. Select the "state" field for users with a first name of "Glory"

3. Select all fields from users who's phone1 starts with "773"


## Query Responses

1.
  * How many rows were returned:
  * First name of the first user:

2.
  * How many rows were returned:
  * What states do they live in:

3.
  * How many rows were returned:
  * What's the last email on the list:


  ## Summary

  Think about how this data is laid out. Feel free to look in the initialize.sql file to see the raw data. Do you think it would be easier or harder to search through this data manually or using SQL? What about when the dataset gets larger?