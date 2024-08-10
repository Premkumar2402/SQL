CREATE TABLE Users (User_ID INT PRIMARY KEY,User_Name VARCHAR(50),Email VARCHAR(50),contact VARCHAR(50),Address VARCHAR(50),
district VARCHAR(50),State VARCHAR(50),Pin_Code VARCHAR(10),Country VARCHAR(50),Continent varchar(50),Gender varchar(50),Created_at TIMESTAMP,Created_bt varchar(50));

insert into Users values(1,'chethan','chethan@gmail.com',8548866698,'mamatha nilaya','chitradurga','karnataka',577501,'India','Asia','M',now(),'varun');
insert into Users values(2, 'Sneha Kulkarni', 'sneha.kulkarni@example.com', '9845198451', 'Brigade Road', 'Bangalore', 'Karnataka', '560002', 'India','Asia','F',now(),'varun');
insert into Users values(3, 'Rohan Shetty', 'rohan.shetty@example.com', '9845298452', '789 Indiranagar', 'Bangalore', 'Karnataka', '560038', 'India','Asia','F',now(),'varun');
insert into Users values(4, 'Priya Naik', 'priya.naik@example.com', '9845398453', '101 Koramangala', 'Bangalore', 'Karnataka', '560095', 'India','Asia','F',now(),'varun');
insert into Users values(5, 'Manoj Desai', 'manoj.desai@example.com', '9845498454', '202 Whitefield', 'Bangalore', 'Karnataka', '560066', 'India','Asia','M',now(),'varun');

CREATE TABLE User_Profile (Profile_ID INT PRIMARY KEY,User_ID INT,Profile_picture VARCHAR(50),Website VARCHAR(100),district varchar(50),
State VARCHAR(50),Pin_Code VARCHAR(10),Country VARCHAR(50),Created_at TIMESTAMP);

INSERT INTO User_Profile values(101, 1,  'profile1.jpg', 'http://example.com/user1', 'Bangalore', 'Karnataka', 560001,  'India', now()); 
INSERT INTO User_Profile values(102, 2, 'profile2.jpg',  'http://example.com/user2', 'Mysore', 'Karnataka', '570001', 'India', now());
INSERT INTO User_Profile values(103, 3, 'profile3.jpg', 'http://example.com/user3', 'Hubli', 'Karnataka', '580020', 'India',now());
INSERT INTO User_Profile values(104, 4, 'profile4.jpg', 'http://example.com/user4', 'Dharwad', 'Karnataka', '580001', 'India', now());
INSERT INTO User_Profile values(105,5, 'profile5.jpg', 'http://example.com/user5','Bellary', 'Karnataka', '583101', 'India', now());

SELECT Users.User_ID, Users.User_Name, Users.Email, Users.contact, Users.Address, Users.district AS User_district, Users.State AS User_State,
Users.Pin_Code AS User_Pin_Code FROM Users INNER JOIN User_Profile ON Users.User_ID = User_Profile.User_ID;

SELECT Users.User_ID, Users.User_Name, Users.Email, Users.contact, Users.Address, Users.district AS User_district, Users.State AS User_State
FROM Users LEFT JOIN User_Profile ON Users.User_ID = User_Profile.User_ID;

SELECT Users.User_ID, Users.User_Name, Users.Email, Users.contact, Users.Address, Users.district AS User_district, Users.State AS User_State,
Users.Pin_Code AS User_Pin_Code FROM Users RIGHT JOIN User_Profile ON Users.User_ID = User_Profile.User_ID;