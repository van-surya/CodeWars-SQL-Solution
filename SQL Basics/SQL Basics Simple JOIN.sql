SELECT p.id, p.name , p.company_id, p.isbn, p.price, c.name AS company_name
FROM products AS p
LEFT JOIN companies AS c 
ON p.company_id = c.id