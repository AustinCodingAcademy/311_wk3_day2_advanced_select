-- #3 below
-- SELECT
--     MIN(users.first_name) as userName,
--     usersAddress.county as userCounty,
--     count(usersAddress.county) as userCount
-- FROM
-- 	users
-- JOIN
-- 	usersAddress
-- WHERE
-- 	users.id = usersAddress.user_id
-- GROUP BY
--     userCounty
-- HAVING
-- 	userCount > 10



#2 below
-- SELECT
--     SUBSTR(phone1, 1, 3) as areaCode,
--     count(phone1) as areaCodeCount
-- FROM
-- 	usersContact
-- GROUP BY
--     SUBSTR(phone1, 1, 3)
-- ORDER BY
-- 	areaCodeCount DESC
--     limit 1

    
-- #1 below
-- SELECT
-- 	count(user_id) as total,
--     state
-- FROM
-- 	usersAddress
-- GROUP BY
-- 	state