### Задача 1
### Создание справочника
[task1.sql](вставить ссылку)

[task1GB.sql](вставить ссылку)

Имеется таблица (сущность) с мобильными телефонами mobile_phones.
У сущности имеются следующие поля(атрибуты):
id – идентификатор;
product_name – название;
manufacturer – производитель;
product_count – количество;
price – цена.

Сущность mobile_phones имеет следующие записи:
| id | product_name | manufacturer | product_count | price | | --- | ------------ | ------------ | ------------- | ----- | | 1 | iPhone X | Apple | 156 | 76000 | | 2 | iPhone 8 | Apple | 180 | 51000 | | 3 | Galaxy S9 | Samsung | 21 | 56000 | | 4 | Galaxy S8 | Samsung | 124 | 41000 | | 5 | P20 Pro | Huawei | 341 | 36000 |

Создайте таблицу (сущность) с заказами {student_schema_name}.manufacturer. При создании необходимо использовать DDL-команды.
Перечень полей (атрибутов):
id – числовой тип, автоинкремент, первичный ключ;
name – строковый тип;

Используя CRUD-операцию INSERT, наполните сущность manufacturer в соответствии с данными, имеющимися в атрибуте manufacturer сущности mobile_phones.
-----------------------------------

### Задача 2
### Вывод статуса количества мобильных телефонов
[task2.sql](вставить ссылку)

[task2GB.sql](вставить ссылку)

Имеется таблица (сущность) с мобильными телефонами mobile_phones.
У сущности имеются следующие поля(атрибуты):
id – идентификатор;
product_name – название;
manufacturer – производитель;
product_count – количество;
price – цена.

Сущность mobile_phones имеет следующие записи:

id	product_name	manufacturer	product_count	price
1	iPhone X	Apple	156	76000
2	iPhone 8	Apple	180	51000
3	Galaxy S9	Samsung	21	56000
4	Galaxy S8	Samsung	124	41000
5	P20 Pro	Huawei	341	36000
Статусы количества мобильных телефонов (в зависимости от количества): меньше 100 – «little»; от 100 до 300 – «many»; больше 300 – «lots».

Необходимо вывести название, производителя и статус количества для мобильных телефонов.
-----------------------------------

### Задача 3
### Создание внешнего ключа
[task3.sql](вставить ссылку)

[task3GB.sql](вставить ссылку)

Имеется таблица (сущность) с мобильными телефонами mobile_phones.
У сущности имеются следующие поля(атрибуты):
id – идентификатор;
product_name – название;
manufacturer – производитель;
product_count – количество;
price – цена.

Сущность mobile_phones имеет следующие записи:

id	product_name	manufacturer	product_count	price
1	iPhone X	Apple	156	76000
2	iPhone 8	Apple	180	51000
3	Galaxy S9	Samsung	21	56000
4	Galaxy S8	Samsung	124	41000
5	P20 Pro	Huawei	341	36000
Имеется таблица-справочник (сущность) производителей manufacturer.
У сущности имеются следующие поля(атрибуты):
id – идентификатор;
name – название.

Сущность manufacturer имеет следующие записи:

id	name
1	Apple
2	Samsung
3	Huawei
Создайте для сущности mobile_phones внешний ключ manufacturer_id (идентификатор производителя), направленный на атрибут id сущности manufacturer. Установите каскадное обновление - CASCADE, а при удалении записи из сущности manufacturer – SET NULL.

Используя CRUD-операцию UPDATE обновите данные в атрибуте manufacturer_id сущности mobile_phones согласно значений, имеющихся в атрибуте manufacturer.

Удалите атрибут manufacturer из сущности mobile_phones.

Выведите идентификатор, название и идентификатор производителя сущности mobile_phones.
-----------------------------------

### Задача 4
### Вывод подробного описания статуса
[task4.sql](вставить ссылку)

[task4GB.sql](вставить ссылку)

Имеется таблица (сущность) с заказами orders.
У сущности имеются следующие поля(атрибуты):
id – идентификатор;
mobile_phones_id – идентификатор мобильного телефона;
order_status - статус.

id	mobile_phones_id	order_status
1	1	OPEN
2	1	OPEN
3	1	CLOSED
4	4	OPEN
5	4	CANCELLED
Подробное описание статусов заказа:
OPEN – «Order is in open state» ;
CLOSED - «Order is closed»;
CANCELLED - «Order is cancelled»

Необходимо вывести идентификатор и подробное описание статуса заказа.
