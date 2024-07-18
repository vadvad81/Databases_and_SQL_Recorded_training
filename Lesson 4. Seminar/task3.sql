-- При написании запросов указывайте не только имя таблицы, но и схему.
-- Название вашей схемы - itresume7263322
-- Например, itresume7263322.tablename

-- Добавление нового столбца manufacturer_id в таблицу mobile_phones
ALTER TABLE itresume7263322.mobile_phones ADD COLUMN manufacturer_id INT;

-- Создание внешнего ключа manufacturer_id, направленного на атрибут id сущности manufacturer
ALTER TABLE itresume7263322.mobile_phones ADD CONSTRAINT fk_manufacturer_id FOREIGN KEY (manufacturer_id) REFERENCES itresume7263322.manufacturer(id) ON UPDATE CASCADE ON DELETE SET NULL;

-- Обновление данных в атрибуте manufacturer_id сущности mobile_phones согласно значений, имеющихся в атрибуте manufacturer
UPDATE itresume7263322.mobile_phones SET manufacturer_id = itresume7263322.manufacturer.id FROM itresume7263322.manufacturer WHERE itresume7263322.mobile_phones.manufacturer = itresume7263322.manufacturer.name;

-- Удаление атрибута manufacturer из сущности mobile_phones
ALTER TABLE itresume7263322.mobile_phones DROP COLUMN manufacturer;

-- Вывод идентификатора, названия и идентификатора производителя сущности mobile_phones
SELECT id, product_name, manufacturer_id FROM itresume7263322.mobile_phones;
