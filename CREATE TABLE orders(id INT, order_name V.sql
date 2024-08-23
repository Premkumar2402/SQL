CREATE TABLE orders(id INT, order_name VARCHAR(30), cost INT, order_id INT PRIMARY KEY, created_at TIMESTAMP, created_by VARCHAR(30), modified_at TIMESTAMP, modified_by VARCHAR(20));
INSERT INTO orders VALUES(1,'Briyani', 250, 16101, now(), 'jeevi', now(), 'Prakash');
INSERT INTO orders VALUES(2,'Chicken Rice', 240, 16102, now(), 'prem', now(), 'maruthu');
INSERT INTO orders VALUES(3,'Chilli chicken', 260, 16103, now(), 'david', now(), 'Denna');
INSERT INTO orders VALUES(4,'Panner Masala', 160, 16104, now(), 'siddik', now(), 'suhail');
select * from orders;
CREATE TABLE payment(id int, price int, payment_id int primary key, order_id int, payment_status varchar(20), created_at timestamp, created_by varchar(30), modified_at timestamp, modified_by varchar(20),FOREIGN KEY (order_id) REFERENCES orders(order_id));
INSERT INTO payment VALUES (1, 250, 2001, 16101, 'sucess', now(), 'arun', now(), 'suhail');
INSERT INTO payment VALUES (2, 240, 2002, 16102, 'sucess', now(), 'vijay', now(), 'surya');
INSERT INTO payment VALUES (3, 260, 2003, 16103, 'sucess', now(), 'john', now(), 'Yash');
INSERT INTO payment VALUES (4, 160, 2004, 16104, 'fail', now(), 'suhas', now(), 'haji');
SELECT * from payment;

CREATE TABLE restaurant(id int, restaurant_name varchar(30), restaurant_id int primary key, location varchar(30), order_id int, rating int, payment_id int, created_at timestamp, created_by varchar(30), modified_at timestamp, modified_by varchar(20),  FOREIGN KEY (order_id) REFERENCES orders(order_id), FOREIGN KEY (payment_id) REFERENCES payment(payment_id));
INSERT INTO restaurant VALUES(1, 'empire restaurant', 80122, 'kodigehalli', 16101, 4, 2001, now(), 'osama', now(), 'mujahid');
INSERT INTO restaurant VALUES(2, 'capital kitchen', 80123, 'tc palaya', 16102, 4, 2002, now(), 'ranjith', now(), 'samiu');
INSERT INTO restaurant VALUES(3, 'A2B restaurant', 80124, 'Majestic', 16103, 5, 2003, now(), 'praveen', now(), 'kalai');
INSERT INTO restaurant VALUES(4, 'goofoo restaurant', 80125, 'kadugodi', 16104, 5, 2004, now(), 'sunil', now(), 'haji');

CREATE TABLE delivery(id int, person_name varchar(30), mode_of_payment enum('online', 'cod'), restaurant_id int, order_id int, created_at timestamp, created_by varchar(30), modified_at timestamp, modified_by varchar(20), FOREIGN KEY(restaurant_id) REFERENCES restaurant(restaurant_id), FOREIGN KEY(order_id) REFERENCES orders(order_id));
INSERT INTO delivery VALUES(1, 'aswin', 'cod', 80122, 16101,now(), 'osama', now(), 'sunil');
INSERT INTO delivery VALUES(2, 'tamim', 'online', 80123, 16102,now(), 'chetan', now(), 'naga');
INSERT INTO delivery VALUES(3, 'gunal', 'cod', 80124, 16103,now(), 'mani', now(), 'maran');
INSERT INTO delivery VALUES(4, 'kalai', 'cod', 80125, 16104,now(), 'palani', now(), 'arul');