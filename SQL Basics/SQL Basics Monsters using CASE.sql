SELECT t.id AS id, t.heads AS heads, t.arms AS arms, b.legs, b.tails,
CASE 
    WHEN heads > arms then 'BEAST'
    WHEN tails  > legs then 'BEAST'
    ELSE 'WEIRDO'
END AS species
FROM top_half AS t, bottom_half AS b
WHERE t.id = b.id
ORDER BY species