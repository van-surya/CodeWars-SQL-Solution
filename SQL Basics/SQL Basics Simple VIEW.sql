CREATE VIEW members_approved_for_voucher AS
  SELECT m.id, m.name, m.email, SUM(p.price) AS total_spending
  FROM members AS m
  INNER JOIN sales AS s ON m.id = s.member_id
  INNER JOIN products AS p ON s.product_id = p.id
  WHERE s.department_id IN (
    SELECT d.id
    FROM departments AS d
    INNER JOIN sales AS s ON d.id = s.department_id
    INNER JOIN products AS p ON p.id = s.product_id
    GROUP BY d.id
    HAVING SUM(p.price) > 10000
  )
  GROUP BY m.id
  HAVING SUM(p.price) > 1000
  ORDER BY m.id;

SELECT * FROM members_approved_for_voucher;