SELECT capital
FROM countries 
WHERE continent LIKE 'Afri_a' AND country LIKE 'E%'
ORDER BY capital
LIMIT 3;