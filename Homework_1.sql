CREATE DATABASE IF NOT EXISTS shop_base;
USE shop_base;
-- 1. Создать таблицу с мобильными телефонами 
DROP TABLE if EXISTS mobile_phone;
CREATE TABLE mobile_phone
(
id INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(20),
Manufacturer VARCHAR(20),
ProductCount INT,
Price INT
);
INSERT mobile_phone(ProductName,Manufacturer,ProductCount,Price)
VALUES
("Iphone X","Apple",3,76000),
("Iphone 8","Apple",2,51000),
("Galaxy S9","Samsung",2,56000),
("Galaxy S8","Samsung",1,41000),
("P20 Pro","Huawei",5,36000),
("Galaxy S","Samsung",1,41000);
SELECT * FROM mobile_phone;

-- 2. Вывести названия, производителя  и цену товаров
-- количесвто которых не превышает 2
SELECT id, ProductName, Manufacturer, Price
FROM mobile_phone
WHERE ProductCount<=2;


-- 3. Вывести весь ассортимент компании Samsung
SELECT id,ProductName
FROM mobile_phone
WHERE Manufacturer = "Samsung";

-- 4. Выведите информацию о телефонах, где суммарный чек 
-- больше 100 000 и меньше 145 000**

SELECT id,ProductName
FROM mobile_phone
WHERE ProductCount*Price BETWEEN 100000 AND 145000;

-- 4.1 Товары, в которых есть упоминание "Iphone"
SELECT id,ProductName
FROM mobile_phone
WHERE ProductName LIKE "%iphone%" ;

-- 4.2 Товары, в которых есть упоминание "Galaxy"
SELECT id,ProductName
FROM mobile_phone
WHERE ProductName LIKE "%galaxy%" ;

-- 4.3 Товары, в которых есть ЦИФРЫ
SELECT id,ProductName
FROM mobile_phone
WHERE ProductName RLIKE "[%0-9%]" ;

