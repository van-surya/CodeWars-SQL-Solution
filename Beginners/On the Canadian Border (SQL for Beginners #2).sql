SELECT name, country
FROM travelers
WHERE NOT country IN ('Canada','Mexico','USA');