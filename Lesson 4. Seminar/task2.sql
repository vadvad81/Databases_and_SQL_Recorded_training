-- Вы работаете с MySQL
-- Введите свой код ниже
SELECT product_name, manufacturer,
CASE
    WHEN product_count < 100 THEN 'little'
    WHEN product_count BETWEEN 100 AND 300 THEN 'many'
    ELSE 'lots'
END AS quantity_status
FROM mobile_phones;
