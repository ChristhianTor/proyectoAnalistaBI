--Consulta FTD por mes
SELECT 
    strftime('%Y-%m', ftd_date) AS mes,
    COUNT(*) AS cantidad_ftd
FROM (
    SELECT 
        player_id,
        MIN(deposit_date) AS ftd_date
    FROM deposits
    GROUP BY player_id
)
GROUP BY mes
ORDER BY mes;


--Consulta CDA por mes
SELECT 
    strftime('%Y-%m', ftd_date) AS mes,
    COUNT(*) AS cantidad_cpa
FROM (
    SELECT 
        player_id,
        MIN(deposit_date) AS ftd_date,
        SUM(amount) AS total
    FROM deposits
    GROUP BY player_id
    HAVING total > 100
)
GROUP BY mes
ORDER BY mes
