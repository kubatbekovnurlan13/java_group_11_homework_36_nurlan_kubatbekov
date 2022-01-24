CREATE OR REPLACE VIEW product_view AS
    SELECT 
        products.id, products.product, actions.action_date
    FROM
        products
            INNER JOIN
        actions ON products.id = actions.product_id
    WHERE
        YEAR(actions.action_date) = 2017
    ORDER BY actions.action_date DESC;