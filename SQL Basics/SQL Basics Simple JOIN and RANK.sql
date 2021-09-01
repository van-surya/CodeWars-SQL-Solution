SELECT p.id , p.name,
  COUNT (s.sale) AS sale_count,
  RANK () OVER (PARTITION BY p.id ORDER BY p.id DESC) AS sale_rank
FROM people AS p
  INNER JOIN sales AS s
  ON p.id = s.people_id
  GROUP BY p.id;