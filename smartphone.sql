  USE products;
SHOW TABLES;
SELECT * FROM smartphone_cleaned_v21 LIMIT 10;
select brand_name, model, price, rating, fast_charging, model
from smartphone_cleaned_v21;

select brand_name,
model,
price,
rating
from smartphone_cleaned_v21;

SELECT brand_name, model, price, rating
FROM smartphone_cleaned_v21
WHERE brand_name IN ('oneplus', 'samsung', 'motorola', 'realme', 'apple')
ORDER BY price DESC, rating DESC;



select count(brand_name) as count_name from smartphone_cleaned_v21;

select avg(price) as avg_price from smartphone_cleaned_v21;
SELECT SUM(price) AS total_price
FROM smartphone_cleaned_v21;

SELECT
    brand_name,
    AVG(rating) AS avg_rating,
    AVG(price) AS avg_price
FROM
    smartphone_cleaned_v21
GROUP BY
    brand_name;
    
 SELECT brand_name, COUNT(model) AS numofmodels
FROM smartphone_cleaned_v21
GROUP BY brand_name
ORDER BY MAX(fast_charging) DESC
LIMIT 0, 1000;


				
    
    
SELECT
    brand_name,
    AVG(rating) AS avg_rating,
    AVG(price) AS avg_price,
    SUM(rating) AS total_rating,
    SUM(price) AS total_price
FROM
    smartphone_cleaned_v21
GROUP BY
    brand_name
HAVING
    AVG(rating) > 4
LIMIT 0, 1000;


SELECT
    brand_name,
    AVG(rating) AS avg_rating,
    AVG(price) AS avg_price,
    SUM(rating) AS total_rating,
    SUM(price) AS total_price,
    CASE
        WHEN AVG(rating) >= 4.5 THEN 'High'
        WHEN AVG(rating) >= 3.0 THEN 'Medium'
        ELSE 'Low'
    END AS rating_category
FROM
    smartphone_cleaned_v21
GROUP BY
    brand_name
HAVING
    AVG(rating) > 2
LIMIT 0, 1000;







