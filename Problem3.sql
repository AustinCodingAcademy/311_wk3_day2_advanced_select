SELECT
	MIN(users.first_name) as userName,
    usersAddress.county as userCounty,
    COUNT(usersAddress.id) as countyUsers
FROM users
JOIN usersAddress
WHERE users.id = usersAddress.user_id
GROUP BY userCounty
HAVING countyUsers > 10