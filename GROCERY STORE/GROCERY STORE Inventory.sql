SELECT id, name, stock
FROM products 
WHERE stock <= 2 AND producent = 'CompanyA'
ORDER BY id;