SELECT 
	SUBSTR(phone1, 1, 3),
	COUNT( SUBSTR(phone1, 1, 3) ) as tiny
FROM usersContact
group by SUBSTR(phone1, 1, 3)
ORDER BY tiny DESC
