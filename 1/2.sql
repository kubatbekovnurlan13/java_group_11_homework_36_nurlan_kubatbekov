SELECT 
    products.id as ID,
    products.product as NAME,
    DATE(actions.action_date) AS YEAR,
    actions.qty as AMOUNT,
    actions.price as PRICE,
    actions.qty * actions.price AS `DELIVERY AMOUNT`
FROM
    products
        INNER JOIN
    actions ON products.id = actions.product_id
WHERE
    YEAR(actions.action_date) < 2017
        AND products.category_id = 2
ORDER BY actions.qty desc , actions.action_date desc
LIMIT 5;