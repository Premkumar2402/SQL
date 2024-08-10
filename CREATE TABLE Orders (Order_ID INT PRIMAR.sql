CREATE TABLE Orders (Order_ID INT PRIMARY KEY,User_ID INT,ProductName VARCHAR(100),Quantity INT,Price INT,OrderDate DATETIME,
district varchar(50),State VARCHAR(50),Pin_Code VARCHAR(10),Country VARCHAR(50),FOREIGN KEY (User_ID) REFERENCES Users(User_ID));

INSERT INTO Orders VALUES(201, 1, 'Smartphone', 1, 25000,now(), 'Bangalore', 'Karnataka', '560001', 'India');
INSERT INTO Orders VALUES(202, 2, 'Laptop', 1, 55000,now(), 'Mysore', 'Karnataka', '570001', 'India');
INSERT INTO Orders VALUES(203, 3, 'Headphones', 2, 5000,now(), 'Hubli', 'Karnataka', '580020', 'India');
INSERT INTO Orders VALUES(204, 4, 'Keyboard', 3, 1500, now(),'Dharwad', 'Karnataka', '580001', 'India');
INSERT INTO Orders VALUES(205, 5, 'Mouse', 5, 800,now(), 'Bellary', 'Karnataka', '583101', 'India');



CREATE TABLE Categories (Category_ID INT PRIMARY KEY,Category_Name VARCHAR(100),contact bigint,district varchar(50),State VARCHAR(50),Pin_Code VARCHAR(10),
country varchar(50),Created_At DATETIME,Updated_At DATETIME);

INSERT INTO Categories (Category_ID, Category_Name, contact, district, State, Pin_Code, country,Created_At,Updated_At) VALUES
(1, 'Electronics', 9876543210, 'Bangalore', 'Karnataka', '560001', 'India',now(),now()),
(2, 'Computers', 9876543211, 'Mysore', 'Karnataka', '570001', 'India',now(),now()),
(3, 'Accessories', 9876543212, 'Hubli', 'Karnataka', '580020', 'India',now(),now()),
(4, 'Peripherals', 9876543213, 'Dharwad', 'Karnataka', '580001', 'India',now(),now()),
(5, 'Storage Devices', 9876543214, 'Bellary', 'Karnataka', '583101', 'India',now(),now());

SELECT Orders.Order_ID, Orders.User_ID, Orders.ProductName, Orders.Quantity, Orders.Price, Orders.OrderDate,Orders.district AS Order_district, Orders.State AS Order_State FROM Orders INNER JOIN Categories
ON Orders.district = Categories.district AND Orders.State = Categories.State AND Orders.Pin_Code = Categories.Pin_Code;

SELECT Orders.Order_ID, Orders.User_ID, Orders.ProductName, Orders.Quantity, Orders.Price, Orders.OrderDate,Orders.district AS Order_district
FROM Orders LEFT JOIN Categories ON Orders.district = Categories.district AND Orders.State = Categories.State;

SELECT Orders.Order_ID, Orders.User_ID, Orders.ProductName, Orders.Quantity, Orders.Price, Orders.OrderDate,Orders.district AS Order_district, Orders.State AS Order_State
FROM Orders RIGHT JOIN Categories ON Orders.district = Categories.district;