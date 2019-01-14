SELECT
  c.uid AS uid,
  c.email AS email,
  c.first_name AS "firstName",
  c.last_name AS "lastName",
  c.in_date AS "inDate"
FROM
  contacts c

SELECT
  uid,
  email,
  first_name,
  last_name,
  in_date
FROM
  contacts