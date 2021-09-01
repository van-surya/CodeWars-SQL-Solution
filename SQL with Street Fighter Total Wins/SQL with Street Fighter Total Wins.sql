SELECT f.name, SUM(f.won) AS won, SUM(f.lost) AS lost
FROM fighters f
JOIN winning_moves wm
ON f.move_id = wm.id
WHERE wm.move != 'Hadoken' AND wm.move !='Shouoken' AND wm.move != 'Kikoken'
GROUP BY f.name
ORDER BY won DESC, lost DESC
LIMIT 6;