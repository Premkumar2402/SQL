CREATE TABLE temple_info (temple_id INT,temple_name VARCHAR(50) NOT NULL, location VARCHAR(90) NOT NULL, deity VARCHAR(100) UNIQUE, opening_date DATE UNIQUE, visitor_count INT CHECK (visitor_count >= 0), is_active BOOLEAN CHECK (is_active IN (TRUE, FALSE)), annual_festival DATE, temple_type VARCHAR(50), last_renovation DATE);
INSERT INTO temple_info VALUES(1, 'Sun Temple', 'Puri', 'Surya', '2024-01-01', 1500, TRUE, '2024-10-05', 'Hindu', '2020-07-15');
INSERT INTO temple_info VALUES(2, 'Ganges Temple', 'Varanasi', 'Ganga', '2024-02-01', 3000, TRUE, '2024-12-25', 'Hindu', '2019-03-22');
INSERT INTO temple_info VALUES(3, 'Golden Temple', 'Amritsar', 'Guru Nanak', '2024-03-01', 5000, TRUE, '2024-08-15', 'Sikh', '2021-11-30');
INSERT INTO temple_info VALUES(4, 'Kashi Vishwanath Temple', 'Varanasi', 'Shiva', '2024-04-01', 2000, TRUE, '2024-06-12', 'Hindu', '2018-05-10');
INSERT INTO temple_info VALUES(5, 'Jagannath Temple', 'Puri', 'Jagannath', '2024-05-01', 2500, TRUE, '2024-07-20', 'Hindu', '2022-01-25');
INSERT INTO temple_info VALUES(6, 'Brihadeeswarar Temple', 'Thanjavur', 'Shiva', '2024-06-01', 1800, TRUE, '2024-09-30', 'Hindu', '2020-06-15');
INSERT INTO temple_info VALUES(7, 'Ramanathaswamy Temple', 'Rameswaram', 'Shiva', '2024-07-01', 1200, TRUE, '2024-10-12', 'Hindu', '2017-08-20');
INSERT INTO temple_info VALUES(8, 'Meenakshi Temple', 'Madurai', 'Meenakshi', '2024-08-01', 2200, TRUE, '2024-11-07', 'Hindu', '2021-04-10');
INSERT INTO temple_info VALUES(9, 'Mahabodhi Temple', 'Bodh Gaya', 'Buddha', '2024-09-01', 3000, TRUE, '2024-12-15', 'Buddhist', '2019-09-18');
INSERT INTO temple_info VALUES(10, 'Lingaraj Temple', 'Bhubaneswar', 'Shiva', '2024-10-01', 1400, TRUE, '2024-11-25', 'Hindu', '2020-03-22');
INSERT INTO temple_info VALUES(11, 'Dwarkadhish Temple', 'Dwarka', 'Krishna', '2024-11-01', 1600, TRUE, '2024-12-05', 'Hindu', '2021-01-15');
INSERT INTO temple_info VALUES(12, 'Kedarnath Temple', 'Kedarnath', 'Shiva', '2024-12-01', 1100, TRUE, '2024-09-15', 'Hindu', '2022-10-10');
INSERT INTO temple_info VALUES(13, 'Siddhivinayak Temple', 'Mumbai', 'Ganesha', '2024-01-15', 2800, TRUE, '2024-10-20', 'Hindu', '2021-12-12');
INSERT INTO temple_info VALUES(14, 'Swaminarayan Akshardham', 'Delhi', 'Swaminarayan', '2024-02-15', 3500, TRUE, '2024-11-01', 'Hindu', '2018-06-25');
INSERT INTO temple_info VALUES(15, 'Hampi Temple', 'Hampi', 'Vittala', '2024-03-15', 2000, TRUE, '2024-12-10', 'Hindu', '2019-07-15');
INSERT INTO temple_info VALUES(16, 'Chidambaram Temple', 'Chidambaram', 'Shiva', '2024-04-15', 1600, TRUE, '2024-10-30', 'Hindu', '2020-11-05');
INSERT INTO temple_info VALUES(17, 'Shirdi Sai Baba Temple', 'Shirdi', 'Sai Baba', '2024-05-15', 2700, TRUE, '2024-09-25', 'Hindu', '2021-03-10');
INSERT INTO temple_info VALUES(18, 'Rajagopalaswamy Temple', 'Kumbakonam', 'Vishnu', '2024-06-15', 1900, TRUE, '2024-08-20', 'Hindu', '2019-01-30');
INSERT INTO temple_info VALUES(19, 'Vaishno Devi Temple', 'Katra', 'Vaishno Devi', '2024-07-15', 4000, TRUE, '2024-12-05', 'Hindu', '2020-08-15');
INSERT INTO temple_info VALUES(20, 'Tirupati Temple', 'Tirupati', 'Venkateswara', '2024-08-15', 6000, TRUE, '2024-11-25', 'Hindu', '2021-06-20');

ALTER TABLE temple_info MODIFY annual_festival DATE NOT NULL;

ALTER TABLE temple_info ADD CONSTRAINT temple_type_uni UNIQUE(temple_type);

ALTER TABLE temple_info ADD CONSTRAINT temple_id_chk CHECK (temple_id > 0);

ALTER TABLE temple_info ADD CONSTRAINT visitor_count_chk CHECK (visitor_count > 150);

SELECT * FROM temple_info;