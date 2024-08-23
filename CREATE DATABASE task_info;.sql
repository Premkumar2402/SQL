CREATE DATABASE task_info;
use task_info;

CREATE TABLE Users (User_ID INT PRIMARY KEY,User_Name VARCHAR(50),Email VARCHAR(50),contact VARCHAR(50),Address VARCHAR(50), district VARCHAR(50), Pin_Code VARCHAR(10),Country VARCHAR(50),Gender varchar(50),Created_at TIMESTAMP,Created_by varchar(50));

insert into Users values(1,'Osama','osama@gmail.com',9988345320,'mamatha nilaya','chitradurga',577501,'India','M',now(),'Aswin');
insert into Users values(2, 'Mujahid', 'mujahid.@gmail.com', '9956411824', 'Brigade Road', 'Bangalore',  '560002', 'India','F',now(),'Aswin');
insert into Users values(3, 'Vijay Kumar', 'vijaykumar@gmail.com', '8072265409', '789 Indiranagar', 'Bangalore', '560038', 'India','F',now(),'Aswin');
insert into Users values(4, 'priyanka', 'priyanka@gmail.com', '807332810', '101 Koramangala', 'Bangalore', '560095', 'India','F',now(),'Aswin');
insert into Users values(5, 'farhan', 'farhan@gmail.com', '9842777662', '202 Whitefield', 'Bangalore','560066', 'India','M',now(),'Aswin');
insert into Users values(6, 'Manoj', 'manoj@gmail.com', '9842854032', '202 Whitefield', 'Bangalore','560066', 'India','M',now(),'Aswin');
insert into Users values(7, 'Ranjith', 'ranjith@gmail.com', '7054611345', '202 Whitefield', 'Bangalore','560066', 'India','M',now(),'Aswin');
insert into Users values(8, 'chethan', 'chethan@gmail.com', '9965711084', '202 Whitefield', 'Bangalore','560066', 'India','M',now(),'Aswin');
insert into Users values(9, 'gunal', 'gunal@gmail.com', '7709191334', '202 Whitefield', 'Bangalore','560066', 'India','M',now(),'Aswin');
insert into Users values(10, 'Farook', 'farook@gmail.com', '7012235606', '202 Whitefield', 'Bangalore','560066', 'India','M',now(),'Aswin');
insert into Users values(11, 'dhanush', 'dhanush@gmail.com', '9047500012', '202 Whitefield', 'Bangalore','560066', 'India','M',now(),'Aswin');
insert into Users values(12, 'premkumar', 'premkunar@gmail.com', '8122478064', '202 Whitefield', 'Bangalore','560066', 'India','M',now(),'Aswin');

CREATE TABLE u_profile (Profile_ID INT PRIMARY KEY,User_ID INT, Website VARCHAR(100), Created_at TIMESTAMP);

INSERT INTO u_profile values(1001, 1, 'url://user.example.com/user1', now()); 
INSERT INTO u_profile values(1002, 2, 'url://user.example.com/user2', now());
INSERT INTO u_profile values(1003, 3, 'url://user.example.com/user3', now());
INSERT INTO u_profile values(1004, 4, 'url://user.example.com/user4', now());
INSERT INTO u_profile values(1005, 5, 'url://user.example.com/user5', now());
INSERT INTO u_profile values(1006, 6, 'url://user.example.com/user6', now());
INSERT INTO u_profile values(1007, 7, 'url://user.example.com/user7', now());
INSERT INTO u_profile values(1008, 8, 'url://user.example.com/user8', now());
INSERT INTO u_profile values(1009, 9, 'url://user.example.com/user9', now());
INSERT INTO u_profile values(1010, 10, 'url://user.example.com/user10', now());

SELECT Users.User_ID, Users.User_Name, Users.Email, Users.contact, Users.Address, Users.district AS User_district, Users.Pin_Code AS User_Pin_Code FROM Users INNER JOIN u_Profile ON Users.User_ID = u_Profile.User_ID;

SELECT Users.User_ID, Users.User_Name, Users.Email, Users.contact, Users.Address, Users.district AS User_district FROM Users LEFT JOIN u_Profile ON Users.User_ID = u_Profile.User_ID;

SELECT Users.User_ID, Users.User_Name, Users.Email, Users.contact, Users.Address, Users.district AS User_district, Users.Pin_Code AS User_Pin_Code FROM Users RIGHT JOIN u_Profile ON Users.User_ID = u_Profile.User_ID;

CREATE TABLE Orders (Order_ID INT PRIMARY KEY,User_ID INT,ProductName VARCHAR(100),Quantity INT,Price INT, FOREIGN KEY (User_ID) REFERENCES Users(User_ID));

INSERT INTO Orders VALUES(201, 1, 'Smartphone', 1, 25000);
INSERT INTO Orders VALUES(202, 2, 'Laptop', 1, 55000);
INSERT INTO Orders VALUES(203, 3, 'Headphones', 2, 5000);
INSERT INTO Orders VALUES(204, 4, 'Keyboard', 3, 1500);
INSERT INTO Orders VALUES(205, 5, 'Mouse', 5, 800);
INSERT INTO Orders VALUES(206, 6, 'phone stand', 2, 1000);
INSERT INTO Orders VALUES(207, 7, 'Bag', 1, 1200);
INSERT INTO Orders VALUES(208, 8, 'Face Wash', 2, 500);
INSERT INTO Orders VALUES(209, 9, 'Sun screen', 2, 1540);
INSERT INTO Orders VALUES(210, 10, 'Travell Bag', 1, 1200);
INSERT INTO Orders VALUES(211, 11, 'Shoe', 1, 1100);
INSERT INTO Orders VALUES(212, 12, 'Fish Tank', 1, 2000);


CREATE TABLE Categories (Category_ID INT PRIMARY KEY,Category_Name VARCHAR(100),contact bigint, Created_At timestamp,Updated_At timestamp);

INSERT INTO Categories VALUES(1, 'Electronics', 9876543210, now(),now());
INSERT INTO Categories VALUES(2, 'Computers', 9876543211, now(),now());
INSERT INTO Categories VALUES(3, 'Accessories', 9876543212, now(),now());
INSERT INTO Categories VALUES(4, 'Peripherals', 9876543213, now(),now());
INSERT INTO Categories VALUES(5, 'Electronics', 9876543214, now(),now());
INSERT INTO Categories VALUES(6, 'Storage Devices', 9876543214, now(),now());
INSERT INTO Categories VALUES(7, 'Storage Devices', 9876543214, now(),now());
INSERT INTO Categories VALUES(8, 'Storage Devices', 8076543214, now(),now());
INSERT INTO Categories VALUES(9, 'Storage Devices', 7976543214, now(),now());
INSERT INTO Categories VALUES(10, 'Storage Devices', 9046543214, now(),now());
INSERT INTO Categories VALUES(11, 'Storage Devices', 7022543214, now(),now());
INSERT INTO Categories VALUES(12, 'Storage Devices', 5408243214, now(),now());


SELECT Orders.Order_ID, Orders.User_ID, Orders.ProductName, Orders.Quantity, Orders.Price FROM Orders INNER JOIN Categories ON orders.User_ID = Categories.Category_ID;

SELECT Orders.Order_ID, Orders.User_ID, Orders.ProductName, Orders.Quantity, Orders.Price, Orders.OrderDate,Orders.district AS Order_district
FROM Orders LEFT JOIN Categories ON Orders.district = Categories.district AND Orders.State = Categories.State;

SELECT Orders.Order_ID, Orders.User_ID, Orders.ProductName, Orders.Quantity, Orders.Price, Orders.OrderDate,Orders.district AS Order_district, Orders.State AS Order_State
FROM Orders RIGHT JOIN Categories ON Orders.district = Categories.district;