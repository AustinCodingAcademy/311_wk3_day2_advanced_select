-- Pt1
-- SELECT 
-- 	count(user_id) as total, state
-- 	FROM usersAddress
-- 	GROUP BY state



-- Pt2
-- SELECT
--     SUBSTR(phone1, 1, 3) as areaCode,
--     count(phone1) as areaCodeCount
-- FROM
-- 	usersContact
-- GROUP BY
--     SUBSTR(phone1, 1, 3)
-- ORDER BY
-- 	areaCodeCount DESC



-- Pt3
SELECT
	MIN(users.first_name) as userName,
    usersAddress.county as userCounty,
    COUNT(usersAddress.county) as countyUsers
FROM
	users
JOIN
	usersAddress
WHERE
	users.id = usersAddress.user_id
GROUP BY
	userCounty
HAVING
	countyUsers > 10








