SELECT state, sum(user_id) FROM usersAddress GROUP BY state;

SELECT left(phone1, 3) as areaCode, count(*) FROM usersContact GROUP BY areaCode;

SELECT users.first_name, usersAddress.county FROM users JOIN usersAddress WHERE users.id = usersAddress.user_id;

SELECT min(users.first_name), usersAddress.county FROM users JOIN usersAddress WHERE users.id = usersAddress.user_id GROUP BY usersAddress.county;

SELECT min(users.first_name), usersAddress.county, count(usersAddress.county) as tally FROM users JOIN usersAddress WHERE users.id = usersAddress.user_id GROUP BY usersAddress.county HAVING tally > 10;
