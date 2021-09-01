SELECT people.*, count(toys.id) AS toy_count
FROM people JOIN toys ON people.id = toys.people_id
GROUP BY people.id;