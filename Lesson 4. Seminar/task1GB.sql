-- Создание таблицы "manufacturer"
DROP TABLE IF EXISTS {student_schema_name}.manufacturer;
CREATE TABLE manufacturer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

-- Заполнение данными таблицы "manufacturer"
INSERT INTO {student_schema_name}.manufacturer (name)
VALUES 
('Apple'),
('Samsung'),
('Huawei');

