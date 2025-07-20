SELECT 
    player_id,
    MIN(deposit_date),
    SUM(amount)
FROM 
    deposits
GROUP BY 
    player_id
HAVING 
    amount > 100;