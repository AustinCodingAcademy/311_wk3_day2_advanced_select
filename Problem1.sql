SELECT
    sum(user_id) as userIdSum
FROM usersAddress
GROUP BY state
HAVING usersAddress.state = 'WY';

