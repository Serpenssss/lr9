CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(255)
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Description TEXT,
    UnitPrice DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10, 3)
);

CREATE TABLE Order_Details (
    Order_Detail_ID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 3),
    CONSTRAINT fk_OrderID FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT fk_ProductID FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

ALTER TABLE Orders ADD FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email) VALUES
(1, 'Иван', 'Иванов', 'ivanov@example.com'),
(2, 'Петр', 'Петров', 'petrov@example.com'),
(3, 'Сергей', 'Сергеев', 'sergeev@example.com'),
(4, 'Андрей', 'Андреев', 'andreev@example.com'),
(5, 'Алексей', 'Александров', 'alexandrov@example.com'),
(6, 'Дмитрий', 'Дмитриев', 'dmitriev@example.com'),
(7, 'Елена', 'Еленина', 'elenina@example.com'),
(8, 'Марина', 'Маринова', 'marinova@example.com'),
(9, 'Ольга', 'Ольгина', 'olgina@example.com'),
(10, 'Виктор', 'Викторов', 'viktorov@example.com'),
(11, 'Ксения', 'Ксенина', 'ksenina@example.com'),
(12, 'Михаил', 'Михайлов', 'mihailov@example.com'),
(13, 'Николай', 'Николаев', 'nikolaev@example.com'),
(14, 'Владимир', 'Владимиров', 'vladimirov@example.com'),
(15, 'Евгений', 'Евгеньевич', 'evgenieevich@example.com'),
(16, 'Антон', 'Антонович', 'antonovich@example.com'),
(17, 'Валерий', 'Валерьевич', 'valerievich@example.com'),
(18, 'Василий', 'Сидоров', 'vasily@example.com'),
(19, 'Анна', 'Анненкова', 'annenkova@example.com'),
(20, 'Федор', 'Федоров', 'fedorov@example.com');


INSERT INTO Product (ProductID, Name, Category, Description, UnitPrice) VALUES
(1, 'Ноутбук', 'Электроника', 'Высокопроизводительный ноутбук для профессионалов', 1200.00),
(2, 'Смартфон', 'Электроника', 'Последний смартфон с расширенными функциями', 800.00),
(3, 'Наушники', 'Аксессуары', 'Беспроводные наушники с шумоподавлением', 150.00),
(4, 'Внешний жесткий диск', 'Хранилище', 'Внешний жесткий диск на 1ТБ для хранения данных', 70.00),
(5, 'Мышь', 'Периферия', 'Эргономичная беспроводная мышь', 30.00),
(6, 'Клавиатура', 'Периферия', 'Механическая клавиатура для любителей набора текста', 100.00),
(7, 'Монитор', 'Дисплеи', '24-дюймовый монитор Full HD', 200.00),
(8, 'Принтер', 'Офисное оборудование', 'Многофункциональный принтер/сканер/копир', 150.00),
(9, 'Планшет', 'Электроника', '7-дюймовый планшет для использования в пути', 100.00),
(10, 'Камера', 'Фотография', 'Цифровая камера с высокочувствительным сенсором', 500.00),
(11, 'Роутер', 'Сеть', 'Беспроводной роутер для домашнего использования', 90.00),
(12, 'Кабель HDMI', 'Аксессуары', 'Кабель HDMI для подключения устройств', 20.00),
(13, 'Зарядное устройство', 'Аксессуары', 'Универсальное зарядное устройство для смартфонов', 50.00),
(14, 'Чехол для ноутбука', 'Аксессуары', 'Защитный чехол для ноутбука', 40.00),
(15, 'USB-флешка', 'Хранилище', 'USB-флешка на 64 ГБ', 30.00),
(16, 'Bluetooth-колонка', 'Аудио', 'Портативная Bluetooth-колонка', 100.00),
(17, 'Игровая консоль', 'Развлечения', 'Современная игровая консоль', 500.00),
(18, 'Гарнитура', 'Аудио', 'Игровая гарнитура с микрофоном', 150.00),
(19, 'Экшн-камера', 'Фотография', 'Водонепроницаемая экшн-камера', 300.00),
(20, 'МФУ', 'Офисное оборудование', 'Многофункциональное устройство (принтер/сканер/копир)', 180.00);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(1, 1, '2023-01-05 15:30:00', 1200.500),
(2, 2, '2023-02-07 09:45:00', 800.250),
(3, 3, '2023-03-11 14:55:00', 1500.750),
(4, 4, '2023-04-13 08:35:00', 200.000),
(5, 5, '2023-05-17 16:22:00', 1100.600),
(6, 6, '2023-06-19 21:48:00', 700.900),
(7, 7, '2023-07-23 12:33:00', 1300.800),
(8, 8, '2023-08-27 10:41:00', 2500.950),
(9, 9, '2023-09-29 17:59:00', 200.000),
(10, 10, '2023-10-31 13:28:00', 500.000),
(11, 11, '2023-11-15 10:34:00', 1450.650),
(12, 12, '2023-12-20 11:47:00', 980.350),
(13, 13, '2024-01-25 12:58:00', 1750.850),
(14, 14, '2024-02-29 14:09:00', 300.000),
(15, 15, '2024-03-31 15:20:00', 1250.700),
(16, 16, '2024-04-12 16:31:00', 850.900),
(17, 17, '2024-05-23 17:42:00', 1550.800),
(18, 18, '2024-06-27 18:53:00', 2750.950),
(19, 19, '2024-07-30 19:59:00', 400.000),
(20, 20, '2024-08-31 20:32:00', 600.000),
(21, 1, '2023-01-05 15:30:00', 2400.500),   
(22, 2, '2023-02-07 09:45:00', 1900.250),   
(23, 3, '2023-03-11 14:55:00', 2600.750),  
(24, 4, '2023-04-13 08:35:00', 3200.000),   
(25, 5, '2023-05-17 16:22:00', 4100.600),   
(26, 6, '2023-06-19 21:48:00', 3700.900),   
(27, 7, '2023-07-23 12:33:00', 4300.800),   
(28, 8, '2023-08-27 10:41:00', 5200.950),  
(29, 9, '2023-09-29 17:59:00', 4200.000),   
(30, 10, '2023-10-31 13:28:00', 5600.000);

INSERT INTO Order_Details (Order_Detail_ID, OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 1, 2, 1200.50),
(2, 1, 2, 1, 800.25),
(3, 1, 3, 3, 150.00),
(4, 1, 4, 2, 30.00),
(5, 1, 5, 1, 100.00),
(6, 2, 1, 1, 70.00),
(7, 2, 2, 1, 100.00),
(8, 2, 3, 1, 100.00),
(9, 2, 4, 4, 200.00),
(10, 2, 5, 1, 150.00),
(11, 3, 1, 2, 1100.60),
(12, 3, 2, 1, 500.00),
(13, 4, 1, 3, 100.00),
(14, 4, 2, 1, 100.00),
(15, 4, 3, 1, 500.00),
(16, 4, 4, 1, 100.00),
(17, 4, 5, 1, 2500.95),
(18, 5, 1, 1, 800.00),
(19, 5, 2, 1, 1200.50),
(20, 6, 1, 1, 800.00),
(21, 6, 2, 1, 1200.50),
(22, 7, 1, 3, 1300.80),
(23, 7, 2, 1, 70.00),
(24, 7, 3, 1, 100.00),
(25, 7, 4, 3, 30.00),
(26, 7, 5, 1, 100.00),
(27, 8, 1, 2, 200.00),
(28, 8, 2, 1, 150.00),
(29, 8, 3, 1, 200.00),
(30, 8, 4, 1, 150.00),
(31, 8, 5, 1, 500.00),
(32, 9, 1, 1, 450.00),
(33, 9, 2, 1, 550.00),
(34, 9, 3, 1, 600.00),
(35, 9, 4, 1, 700.00),
(36, 9, 5, 1, 800.00),
(37, 10, 1, 1, 900.00),
(38, 10, 2, 1, 1000.00),
(39, 10, 3, 1, 1100.00),
(40, 10, 4, 1, 1200.00),
(41, 10, 5, 1, 1300.00),
(42, 11, 6, 1, 1400.00),
(43, 11, 7, 1, 1500.00),
(44, 11, 8, 1, 1600.00),
(45, 11, 9, 1, 1700.00),
(46, 11, 10, 1, 1800.00),
(47, 12, 11, 1, 1900.00),
(48, 12, 12, 1, 2000.00),
(49, 12, 13, 1, 2100.00),
(50, 12, 14, 1, 2200.00);

SELECT c.FirstName, c.LastName, SUM(o.TotalAmount) AS TotalSum -- п.п.7
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName;

--Этот запрос выбирает имена и фамилии клиентов, а также общую сумму их заказов. Для этого используются таблицы Customers и Orders, которые соединяются по идентификатору клиента (CustomerID). 
--Результаты группируются по имени и фамилии клиента, а функция SUM() суммирует значения поля TotalAmount для каждого клиента.
--Составляющие:

--SELECT: выбираются столбцы c.FirstName, c.LastName и вычисляемый столбец SUM(o.TotalAmount) с псевдонимом TotalSum.
--FROM: задается таблица Customers с псевдонимом c.
--JOIN: выполняется соединение таблицы Customers с таблицей Orders по полю c.CustomerID.
--ON: условие соединения таблиц — совпадение полей c.CustomerID и o.CustomerID.
--GROUP BY: группировка результатов по именам и фамилиям клиентов, чтобы суммировать общую стоимость заказов для каждого клиента.

SELECT c.FirstName, c.LastName, SUM(o.TotalAmount) AS TotalSum --п.п.8
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName
ORDER BY TotalSum DESC;

--Запрос аналогичен предыдущему, но добавляет сортировку результата по общей сумме заказов в порядке убывания (DESC), то есть сначала будут показаны клиенты с наибольшей общей суммой заказов.
--Составляющие:
--ORDER BY: добавлен новый элемент, который сортирует результаты по убыванию суммы заказов (TotalSum).

SELECT FirstName, LastName, TotalSum, AvgTotalSum -- п.п.9
FROM (
    SELECT c.FirstName, c.LastName, SUM(o.TotalAmount) AS TotalSum
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    GROUP BY c.FirstName, c.LastName
) AS subquery
CROSS JOIN (
    SELECT AVG(TotalSum) AS AvgTotalSum
    FROM (
        SELECT SUM(o.TotalAmount) AS TotalSum
        FROM Customers c
        JOIN Orders o ON c.CustomerID = o.CustomerID
        GROUP BY c.FirstName, c.LastName
    ) AS inner_subquery
) AS avg_subquery
ORDER BY TotalSum DESC;

--Запрос похож на предыдущие, но дополнительно выводит среднюю общую сумму заказов среди всех клиентов. 
--Используется подзапросы для вычисления средней суммы заказов и объединения её с результатами основного запроса через перекрестное соединение (CROSS JOIN).
--Составляющие:

--subquery: внутренний подзапрос, который возвращает имена, фамилии и общие суммы заказов клиентов.
--inner_subquery: ещё один внутренний подзапрос, который вычисляет общие суммы заказов для каждого клиента.
--avg_subquery: подзапрос, который вычисляет среднюю общую сумму заказов среди всех клиентов.
--CROSS JOIN: объединяет результаты подзапросов таким образом, что каждая строка из первого подзапроса сочетается с одной строкой из второго подзапроса (средней суммой).
--ORDER BY: сортирует результаты по убыванию общей суммы заказов.

WITH RankedClients AS (--п.п.10
    SELECT c.FirstName, c.LastName, SUM(o.TotalAmount) AS TotalSum,
           RANK() OVER (ORDER BY SUM(o.TotalAmount) DESC) AS rank
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    GROUP BY c.FirstName, c.LastName
)
SELECT *
FROM RankedClients
WHERE rank = 1;

--Используется оператор WITH для создания временной таблицы RankedClients, которая содержит имена, фамилии клиентов, общую сумму их заказов и ранг, основанный на общей сумме заказов. 
--Ранг рассчитывается функцией RANK(), которая присваивает ранги клиентам в зависимости от их общей суммы заказов. Основной запрос затем выбирает данные из временной таблицы, фильтруя только тех клиентов, 
--чей ранг равен 1 (то есть клиенты с наивысшей общей суммой заказов).
--Составляющие:

--WITH RankedClients AS ...: создаёт временную таблицу RankedClients, содержащую информацию о клиентах и их общем объеме заказов, а также рассчитанный ранг.
--RANK() OVER (ORDER BY SUM(o.TotalAmount) DESC): функция RANK() присваивает ранги клиентам в порядке убывания общей суммы их заказов.
--SELECT * FROM RankedClients WHERE rank = 1: выбирает все строки из временной таблицы, где ранг равен 1, то есть клиентов с наибольшей общей суммой заказов.

WITH TopCustomers AS (--п.п.11
    SELECT
        c.CustomerID,
        c.FirstName,
        c.LastName,
        SUM(o.TotalAmount) AS TotalOrderValue,
        RANK() OVER (ORDER BY SUM(o.TotalAmount) DESC) AS Rank
    FROM
        Customers c
    JOIN
        Orders o ON c.CustomerID = o.CustomerID
    GROUP BY
        c.CustomerID, c.FirstName, c.LastName
)
SELECT
    tc.FirstName,
    tc.LastName,
    o.OrderID,
    o.TotalAmount
FROM
    TopCustomers tc
JOIN
    Orders o ON tc.CustomerID = o.CustomerID
WHERE
    tc.Rank = 1
ORDER BY
    o.TotalAmount ASC;

--Этот запрос использует оператор WITH для нахождения топ-клиентов с наибольшей общей суммой заказов. Затем основной запрос выбирает все заказы этих клиентов, сортируя их по стоимости в порядке возрастания.
--Составляющие:

--WITH TopCustomers AS ...: создаётся временная таблица TopCustomers, содержащая информацию о клиентах с наибольшей общей суммой заказов.
--RANK() OVER (ORDER BY SUM(o.TotalAmount) DESC): функция RANK() присваивает ранги клиентам в порядке убывания общей суммы их заказов.
--SELECT tc.FirstName, tc.LastName, o.OrderID, o.TotalAmount: выбирает имена, фамилии клиентов, идентификаторы и суммы их заказов.
--JOIN Orders o ON tc.CustomerID = o.CustomerID: соединяет временную таблицу TopCustomers с таблицей Orders по идентификатору клиента.
--WHERE tc.Rank = 1: фильтрует клиентов, оставляя только тех, кто имеет наивысший ранг (то есть клиентов с наибольшей общей суммой заказов).
--ORDER BY o.TotalAmount ASC: сортирует результаты по возрастанию стоимости заказа.

WITH AvgOrderValue AS (--п.п.12
    SELECT ROUND(AVG(TotalOrderValue), 2) AS AverageTotal
    FROM (
        SELECT SUM(o.TotalAmount) AS TotalOrderValue
        FROM Orders o
        GROUP BY o.CustomerID
    ) AS CustomerTotals
),
CustomerSums AS (
    SELECT
        c.FirstName,
        c.LastName,
        SUM(o.TotalAmount) AS TotalOrderValue
    FROM
        Customers c
    JOIN
        Orders o ON c.CustomerID = o.CustomerID
    GROUP BY
        c.CustomerID, c.FirstName, c.LastName
)
SELECT
    cs.FirstName,
    cs.LastName,
    cs.TotalOrderValue,
    ao.AverageTotal
FROM
    CustomerSums cs
CROSS JOIN
    AvgOrderValue ao
WHERE
    cs.TotalOrderValue > ao.AverageTotal;

--Запрос использует два оператора WITH: первый создает временную таблицу AvgOrderValue, которая содержит среднюю общую сумму заказов среди всех клиентов, второй (CustomerSums) вычисляет общую сумму заказов 
--для каждого клиента. Основной запрос затем выбирает тех клиентов, у которых общая сумма заказов превышает эту среднюю сумму.
--Составляющие:

--WITH AvgOrderValue AS ...: создаёт временную таблицу AvgOrderValue, содержащую одну строку со средней общей суммой заказов.
--CustomerTotals: подзапрос, который вычисляет общую сумму заказов для каждого клиента.
--CustomerSums AS ...: создаёт временную таблицу CustomerSums, содержащую информацию о клиентах и общей сумме их заказов.
--CROSS JOIN AvgOrderValue ao: выполняет перекрестное соединение между таблицами CustomerSums и AvgOrderValue, чтобы каждая строка первой таблицы была связана с единственной строкой второй таблицы.
--WHERE cs.TotalOrderValue > ao.AverageTotal: фильтрует клиентов, оставляя только тех, чья общая сумма заказов больше средней суммы.
