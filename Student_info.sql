CREATE TABLE student_info(id int not null, student_name varchar(25), roll_no int, standard varchar(15), class_teacher varchar(20));

ALTER TABLE student_info MODIFY id int NOT NULL;
ALTER TABLE student_info DROP id;

INSERT INTO student_info VALUES(1, 'Prem Kumar', 21, '12th std', 'priyanka');
INSERT INTO student_info VALUES(2, 'Osama', 27, '11th std', 'kalaiyasari');
INSERT INTO student_info VALUES(3, 'Osama', 27, '11th std', 'kalaiyasari');
INSERT INTO student_info VALUES(4, 'Chethan', 29, '12th std', 'Banu Priya');
INSERT INTO student_info VALUES(5, 'Naga', 07, '11th std', 'priya mohan');

ALTER TABLE student_info ADD CONSTRAINT id_uni UNIQUE(id); 

ALTER TABLE student_info DROP CONSTRAINT id_uni;

CREATE TABLE mall_information(id int not null, mall_name varchar(40), mall_loc varchar(30), no_of_shops int, no_of_employee int);

ALTER TABLE mall_information ADD CONSTRAINT mall_name_uni UNIQUE(mall_name);
ALTER TABLE mall_information DROP CONSTRAINT mall_name_uni;

INSERT INTO mall_information VALUES(01, 'Lulu Mall', 'ramchandarpuram', 50, 2000);
INSERT INTO mall_information VALUES(02, 'GT Mall', 'magadi road', 60, 2200);
INSERT INTO mall_information VALUES(03, 'orion Mall', 'Dr.rajkumar Road', 50, 2500);
INSERT INTO mall_information VALUES(04, 'Mall of Asia', 'Yelahanka Road', 40, 1500);
INSERT INTO mall_information VALUES(05, 'Gopalan Mall', 'white field', 35, 1560);

ALTER TABLE mall_information ADD CONSTRAINT mall_loc_uni UNIQUE(mall_loc);
ALTER TABLE mall_information DROP CONSTRAINT mall_loc_uni;


CREATE TABLE railway_station(id int not null, no_of_platform int, train_no int, sources varchar(30), destination varchar(30));

ALTER TABLE railway_station ADD CONSTRAINT no_of_platform_chk CHECK(no_of_platform > 0);
ALTER TABLE railway_station DROP CONSTRAINT no_of_platform_chk;

INSERT INTO railway_station VALUES(01, 03, 20677, 'Ksr Banglore', 'Dharmapuri');
INSERT INTO railway_station VALUES(02, 04, 16212, 'Yeswanthpura', 'Hosur');
INSERT INTO railway_station VALUES(03, 08, 16212, 'Bangalore cant', 'Salem');
INSERT INTO railway_station VALUES(04, 05, 15692, 'Earnakullam', 'Banglore');
INSERT INTO railway_station VALUES(05, 09, 26713, 'Palacode', 'Yeswanthpura');

ALTER TABLE railway_station ADD CONSTRAINT sources_uni UNIQUE(sources);
ALTER TABLE railway_station DROP CONSTRAINT sources_uni;

CREATE TABLE pg_info(id int not null, person_name varchar(30), aadhar_proof int, contact_number bigint, rent int);

ALTER TABLE pg_info ADD CONSTRAINT rent_chk CHECK(rent > 2000);
ALTER TABLE pg_info DROP CONSTRAINT rent_chk;

INSERT INTO pg_info VALUES(01, 'osama', 243598011, 9956477821, 5000);
INSERT INTO pg_info VALUES(02, 'surya', 276801012, 8076477829, 5000);
INSERT INTO pg_info VALUES(03, 'Gokul', 201467809, 9956477459, 5000);
INSERT INTO pg_info VALUES(04, 'Suhail', 459867809, 7023477459, 5000);
INSERT INTO pg_info VALUES(05, 'prem', 658907809, 9932077459, 5000);

ALTER TABLE pg_info ADD CONSTRAINT person_name_uni UNIQUE(person_name);
ALTER TABLE pg_info DROP CONSTRAINT person_name_uni;