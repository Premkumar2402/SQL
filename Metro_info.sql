CREATE TABLE metro_info(id int, train_no int, Station_Name varchar(30), no_of_platform int not null, no_of_train_passing int, Sources varchar(40), destination varchar(40), Ticket_type varchar(20), ticket_cost int, timing time);
INSERT INTO metro_info VALUES(01, 20110, 'Nagawara', 5, 50, 'Nagawara, 1 platform', 'Sandal soap Factory', 'offline', 25, '08:05:00');
INSERT INTO metro_info VALUES(02, 20121, 'Hebbal', 3, 20, 'Hebbal, 2 platform', 'Vijaynagar', 'online', 23, '08:15:05');
INSERT INTO metro_info VALUES(03, 10323, 'Sandal soap Factory', 4, 35, 'Sandal soap Factory, 1 platform', 'Rajajinagar', 'online', 23, '08:15:05');
INSERT INTO metro_info VALUES(04, 24323, 'Baiyappanahalli', 2, 20, 'Baiyappanahalli, 1 platform', 'Majestic', 'online', 36, '08:20:13');
INSERT INTO metro_info VALUES(05, 34090, 'west gate', 2, 20, 'west gate, 2 platform', 'Chickpet', 'offline', 37, '09:20:13');
INSERT INTO metro_info VALUES(06, 80090, 'kampilya', 3, 24, 'kampilya, 2 platform', 'Baiyappanahalli', 'offline', 42, '09:30:11');
INSERT INTO metro_info VALUES(07, 25132, 'Vijaynagar', 3, 14, 'Vijaynagar, 1 platform', 'Hebbal', 'offline', 32, '09:35:00');
INSERT INTO metro_info VALUES(08, 31132, 'Cubbon Park', 3, 25, 'Cubbon Park, 2 platform', 'Mysore road', 'online', 27, '07:00:08');
INSERT INTO metro_info VALUES(09, 41132, 'Dasarahalli', 4, 30, 'Dasarahalli, 3 platform', 'Bangalore East', 'online', 30, '07:07:39');
INSERT INTO metro_info VALUES(10, 31232, 'Majestic', 3, 30, 'Majestic, 3 platform', 'Dasarahalli', 'offline', 35, '08:07:55');
INSERT INTO metro_info VALUES(11, 45041, 'Mysore road', 5, 28, 'Mysore road, 4 platform', 'Dasarahalli', 'online', 32, '09:07:30');
INSERT INTO metro_info VALUES(12, 99562, 'Nandini Layout', 3, 25, 'Nandini Layout, 4 platform', 'Kengeri', 'offline', 35, '07:17:35');
INSERT INTO metro_info VALUES(13, 80165, 'Jalahalli', 2, 20, 'Jalahalli, 4 platform', 'Dasarahalli', 'online', 32, '09:55:20');
INSERT INTO metro_info VALUES(14, 78077, 'Majestic', 1, 18, 'Majestic, 1 platform', 'indraNagar', 'offline', 32, '09:33:34');
INSERT INTO metro_info VALUES(15, 99652, 'Ulsoor', 2, 15, 'Ulsoor, 2 platform', 'Vijaynagar', 'online', 41, '11:09:01');
INSERT INTO metro_info VALUES(16, 80722, 'Kempapura', 5, 14, 'Kempapura, 5 platform', 'kampilya', 'online', 30, '06:05:35');
INSERT INTO metro_info VALUES(17, 11320, 'Raja market', 3, 14, 'Raja market, 2 platform', 'Peenya', 'offline', 15, '13:07:15');
INSERT INTO metro_info VALUES(18, 90234, 'Jalahalli', 1, 20, 'Jalahalli, 1 platform', 'Raja market', 'online', 20, '12:06:55');
INSERT INTO metro_info VALUES(19, 30981, 'Nandini Layout ', 4, 12, 'Nandini Layout, 1 platform', 'West Gate', 'offline', 19, '09:45:32');
INSERT INTO metro_info VALUES(20, 80132, 'Bangalore city ', 3, 10, 'Bangalore city, 2 platform', 'Nagasandra', 'offline', 40, '11:07:35');

ALTER TABLE metro_info MODIFY id int NOT NULL;

ALTER TABLE metro_info ADD CONSTRAINT train_no_uni UNIQUE (train_no);

ALTER TABLE metro_info ADD CONSTRAINT id_chk CHECK (id > 0);

ALTER TABLE metro_info ADD CONSTRAINT no_of_platform_chk CHECK (no_of_platform > 0);

SELECT * FROM metro_info