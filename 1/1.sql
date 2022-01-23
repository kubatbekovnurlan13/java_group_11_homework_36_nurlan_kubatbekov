SELECT 
    products.id,
    products.product,
    DATE(actions.action_date) AS year,
    actions.qty,
    actions.price,
    actions.qty * actions.price AS delivery_amount
FROM
    products
        INNER JOIN
    actions ON products.id = actions.product_id
WHERE
    YEAR(actions.action_date) < 2017
        AND products.product LIKE 'Mon%'
ORDER BY actions.qty desc , actions.action_date desc
LIMIT 5;