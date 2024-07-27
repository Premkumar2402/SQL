CREATE TABLE markets_info (market_id INT NOT NULL, market_name VARCHAR(50) UNIQUE, market_location VARCHAR(45), market_code INT UNIQUE, no_of_stalls INT CHECK (no_of_stalls >= 0), market_manager VARCHAR(50), available BOOLEAN, established_year INT, manager_sal INT, maintenance_exp INT);
INSERT INTO markets_info VALUES(1,'central Market', 'Chennai', 20010, 70, 'sivakumar', true, 1999, 50000, 10000);
INSERT INTO markets_info VALUES(2,'koyambaddu Market', 'Chennai', 100910, 100, 'manoj', true, 1995, 48000, 15000);
INSERT INTO markets_info VALUES(3,'periyameedu Market', 'kovai', 108024, 55, 'anush', true, 1997, 40000, 13000);
INSERT INTO markets_info VALUES(4,'sultanpet Market', 'kovai', 103084, 40, 'varun kumar', true, 2000, 30000, 10000);
INSERT INTO markets_info VALUES(5,'sultanpet Market', 'Thrunelveli', 200884, 47, 'karthikeyan', true, 1995, 30000, 7000);
INSERT INTO markets_info VALUES(6,'Salem agri pcd Market', 'Salem', 2100344, 35, 'Barkath', true, 1990, 39000, 8800);
INSERT INTO markets_info VALUES(7,'Dharmapuri agri Market', 'Dharmapuri', 2922044, 40, 'Azees', true, 1992, 29000, 9700);
INSERT INTO markets_info VALUES(8,'Palacode pcd Market', 'Dharmapuri', 7069071, 30, 'Aswin', true, 1999, 15000, 4500);
INSERT INTO markets_info VALUES(9,'KR Market', 'Bangalore', 7055471, 55, 'sunilPrasad', true, 1980, 25000, 19000);
INSERT INTO markets_info VALUES(10,'Commercial Market', 'Bangalore', 6055471, 33, 'Rajaji', true, 1983, 20000, 10000);
INSERT INTO markets_info VALUES(11,'Russell Market', 'Bangalore', 8055472, 42, 'Ravindar', true, 1990, 23000, 14000);
INSERT INTO markets_info VALUES(12,'Shivajinagar Market', 'Bangalore', 22054, 70, 'jainthi', true, 1998, 15000, 7000);
INSERT INTO markets_info VALUES(13,'Madiwala Market', 'Bangalore', 213452, 60, 'kovendar', true, 1992, 31000, 9000);
INSERT INTO markets_info VALUES(14,'Yeswantpura Market', 'Bangalore', 21382, 50, 'Samiu', true, 2001, 29550, 9050);
INSERT INTO markets_info VALUES(15,'Chickpet Market', 'Bangalore', 153462, 50, 'Ranjith Gauda', true, 2000, 21550, 9000);
INSERT INTO markets_info VALUES(16,'Kozhikode Market', 'kerala', 29002, 40, 'Madhan', true, 1994, 21500, 7900);
INSERT INTO markets_info VALUES(17,'Thrissur Vadakkumnathan Market', 'kerala', 29098, 52, 'Abu Salim', true, 1998, 29500, 17000);
INSERT INTO markets_info VALUES(18,'Ernakulam Boardway Market', 'kerala', 27698, 49, 'Hiffuz', true, 1980, 45800, 15000);
INSERT INTO markets_info VALUES(19,'Alappuzha Market', 'kerala', 10902, 30, 'kanku', true, 1989, 30750, 10000);
INSERT INTO markets_info VALUES(20,'Kollam Market', 'kerala', 12452, 20, 'Makick', true, 2000, 20750, 5000);

ALTER TABLE markets_info MODIFY market_location VARCHAR(45) NOT NULL;

ALTER TABLE markets_info ADD CONSTRAINT market_id_uni UNIQUE(market_id);

ALTER TABLE markets_info ADD CONSTRAINT market_id_chk CHECK (market_id > 0);

ALTER TABLE markets_info ADD CONSTRAINT manager_sal_chk CHECK (manager_sal > 5000);

SELECT * FROM markets_info;