SELECT 
    actions.id AS ID,
    products.product AS NAME,
    suppliers.supplier AS SUPPLIER,
    actions.action_date AS DATE,
    actions.qty AS AMOUNT,
    actions.price AS PRICE
FROM
    actions
        INNER JOIN
    products ON actions.product_id = products.id
        INNER JOIN
    suppliers ON actions.supplier_id = suppliers.id
WHERE
    YEAR(actions.action_date) = 2016
        AND MONTH(actions.action_date) = 1
ORDER BY DATE(actions.action_date) DESC;