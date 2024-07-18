### Задача 1
### Создание сущности с мобильными телефонами
[task1.py](вставить ссылку)

[task1GB.py](вставить ссылку)

-- удаляем таблицу с мобильными телефонами `mobile_phones`, если она существует
DROP TABLE IF EXISTS {schema_name}.mobile_phones;
-- создаём таблицу с мобильными телефонами (mobile_phones)
CREATE TABLE {schema_name}.mobile_phones (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    product_count INT,
    price BIGINT
);

-- наполнение данными
INSERT INTO {schema_name}.mobile_phones (product_name, manufacturer, product_count, price)
VALUES
    ('iPhone X', 'Apple', 3, 76000),  
    ('iPhone 8', 'Apple', 2, 51000),  
    ('Galaxy S9', 'Samsung', 2, 56000),  
    ('Galaxy S8', 'Samsung', 1, 41000),
    ('P20 Pro', 'Huawei', 5, 36000);

-----------------------------------

### Задача 2
### Выборка мобильных телефонов по количеству
[task2.py](вставить ссылку)

[task2GB.py](вставить ссылку)

Имеется таблица (сущность) с мобильными телефонами mobile_phones.
У сущности имеются следующие поля(атрибуты):
id – идентификатор;
product_name – название;
manufacturer – производитель;
product_count – количество;
price – цена.
Необходимо вывести название, производителя и цену для мобильных телефонов, у которых количество больше чем 2.
-----------------------------------

### Задача 3
### Выборка мобильных телефонов производителя «Samsung»
[task3.py](вставить ссылку)

[task3GB.py](вставить ссылку)

ИИмеется таблица (сущность) с мобильными телефонами mobile_phones.
У сущности имеются следующие поля(атрибуты):
id – идентификатор;
product_name – название;
manufacturer – производитель;
product_count – количество;
price – цена.
Необходимо вывести идентификатор, название, производителя, количество и цену для мобильных телефонов, у которых производитель «Samsung».