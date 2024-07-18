-- При написании запросов указывайте не только имя таблицы, но и схему.
-- Название вашей схемы - itresume7263322
-- Например, itresume7263322.tablename


-- Вы работаете с PostgreSQL
-- Введите свой код ниже
-- Создание таблицы

CREATE TABLE itresume7263322.mobile_phones (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255) NOT NULL,
    product_count INTEGER CHECK (product_count >= 0),
 price NUMERIC CHECK (price >= 0)
);
​

INSERT INTO itresume7263322.mobile_phones (product_name, manufacturer, product_count, price) VALUES
('iPhone X', 'Apple', 156, 76000),
('iPhone 8', 'Apple', 180, 51000),
('Galaxy S9', 'Samsung', 21, 56000),
('Galaxy S8', 'Samsung', 124, 41000),
('P20 Pro', 'Huawei', 341, 36000);