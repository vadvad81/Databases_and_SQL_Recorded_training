SELECT 
`product_name`,
`manufacturer`,
CASE 
WHEN product_count<100 THEN 'little'
WHEN product_count between 100 AND 300 THEN 'many'
WHEN product_count>300 THEN ' lots'
ELSE 'unspecified'
END AS `status_count` 
FROM `mobile_phones`;
