-- При написании запросов указывайте не только имя таблицы, но и схему.
-- Название вашей схемы - itresume7263322
-- Например, itresume7263322.tablename

-- Вы работаете с PostgreSQL
-- Введите свой код ниже
-- Создание таблицы manufacturer
CREATE TABLE itresume7263322.manufacturer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- Заполнение таблицы manufacturer данными из таблицы mobile_phones
INSERT INTO itresume7263322.manufacturer (name)
SELECT DISTINCT manufacturer
FROM mobile_phones;
