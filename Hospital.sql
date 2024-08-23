CREATE DATABASE Hospital;
CREATE DATABASE Tourist;
USE Hospital;
CREATE TABLE Hospital_info(id int, P_Name varchar(20), admission_No int, phone_no bigint,P_address varchar(30), P_problem varchar(25), blood_group varchar(10), bed_no int, join_date int, delivery_date int);
INSERT INTO Hospital_info VALUES(001, 'Ajay', 0010, 9955401020, 'sivajinagar,Bangalore', 'diabeties', 'o+ve', 20, 0206, 1006);
INSERT INTO Hospital_info VALUES(002, 'Arun', 0020, 9952457020, 'rajajinagar,Bangalore', 'alcar', 'o+ve', 21, 0506, 1806);
INSERT INTO Hospital_info VALUES(003, 'Benazeer', 0030, 9955482420, 'whitefield,Bangalore', 'thyriod', 'B+ve', 10, 0207, 1007);
INSERT INTO Hospital_info VALUES(004, 'chandru', 0040, 8077401020, 'majestic,Bangalore', 'diabeties', 'A+ve', 22, 0206, 1006);
INSERT INTO Hospital_info VALUES(001, 'Ajay', 0010, 9955401020, 'sivajinagar,Bangalore', 'diabeties', 'o+ve', 20, 0206, 1006);
INSERT INTO Hospital_info VALUES(006, 'tarun', 0060, 9955407890, 'whitefield,Bangalore', 'sugar', 'B+ve', 20, 0206, 1206);
INSERT INTO Hospital_info VALUES(007, 'kiran', 0070, 9900231520, 'rammandir,Bangalore', 'viral fever', 'o+ve', 20, 0206, 1006);
INSERT INTO Hospital_info VALUES(008, 'surya', 0080, 9343541020, 'sivajinagar,Bangalore', 'diabeties', 'o+ve', 15, 0706, 1006);
INSERT INTO Hospital_info VALUES(009, 'suri', 0090, 9965620901, 'rammandir,Bangalore', 'viral fever', 'AB+ve', 20, 0207, 1007);
INSERT INTO Hospital_info VALUES(010, 'sudhan', 0010, 9965620001, 'yeswantpur,Bangalore', 'sugar', 'AB+ve', 19, 0207, 1007);
INSERT INTO Hospital_info VALUES(011, 'mani', 0011, 9965620901, 'kr market,Bangalore', 'fever', 'B+ve', 18, 0207, 1007);
INSERT INTO Hospital_info VALUES(012, 'suri.M', 0012, 9990820901, 'hasan,Bangalore', 'food poison', 'A+ve', 17, 0206, 0507);
INSERT INTO Hospital_info VALUES(013, 'praveen.M', 0013, 9087720901, 'majestic,Bangalore', 'stomach pain', 'A+ve', 12, 0206, 1007);
INSERT INTO Hospital_info VALUES(014, 'vijay', 0014, 9990820901, 'townhall,Bangalore', 'alcar', 'A+ve', 17, 0206, 0507);
INSERT INTO Hospital_info VALUES(015, 'lokesh', 0015, 9990786501, 'kr market,Bangalore', 'stomach pain', 'B+ve', 17, 0206, 0507);
INSERT INTO Hospital_info VALUES(016, 'vikram', 0016, 9990820901, 'mg road,Bangalore', 'food poison', 'A+ve', 16, 0206, 0507);
INSERT INTO Hospital_info VALUES(017, 'billa', 0017, 9990820809, 'mg road,Bangalore', 'thyroid', 'A+ve', 14, 0206, 0507);
INSERT INTO Hospital_info VALUES(018, 'suhana', 0018, 8804820901, 'townhall,Bangalore', 'sugar', 'AB+ve', 13, 0807, 0508);
INSERT INTO Hospital_info VALUES(019, 'kavin', 0019, 8804430901, 'majestic,Bangalore', 'high sugar', 'B+ve', 12, 0707, 0907);
INSERT INTO Hospital_info VALUES(020, 'nagamani', 0020, 8002230901, 'yeswantpur,Bangalore', 'low sugar', 'O-ve', 11, 0707, 0907);

USE Tourist;
CREATE TABLE Tourist(id int,t_destination varchar(50),t_length int,t_duration int,t_state varchar(50),t_country varchar(50),t_travelcharges int,t_accomodation int,t_transportation_type varchar(50),t_place_opening varchar(20),t_place_closing varchar(20));
INSERT INTO Tourist values(1,'Hong kong',4013,3,'Wanchal district','China',100000,500000,'flight','9.00 am','10.30pm');
INSERT INTO Tourist values(2,'AmsterDam',7670,7,'Netherland','Amritsar',80000,50000,'flight','9.00 am','10.30pm');
INSERT INTO Tourist values(3,'Bangkok',5262,4,'Central thailand','Thailand',300000,60000,'flight','9.00 am','10.30pm');
INSERT INTO Tourist values(4,'Seoul',5590,5,'Korea','South Korea',200000,340000,'flight','9.00 am','10.30pm');
INSERT INTO Tourist values(5,'Haridwar',2312,6,'Uttarkhnad','India',5000,23000,'flight','9.00 am','10.30pm');
INSERT INTO Tourist values(6,'Manali',2630,3,'Himachal Pradesh','India',20000,3400,'flight','9.00 am','10.30pm');
INSERT INTO Tourist values(7,'Badrinath ',2615,1,'Uttarkhand','India',10000,23000,'flight','9.00 am','10.30pm');
INSERT INTO Tourist values(8,'Ooty',285,3,'TamilNadu','India',7000,3000,'Train','9.00 am','10.30pm');
INSERT INTO Tourist values(9,'Kodaikanal',502,2,'TamilNadu','India',6000,3000,'Train','9.00 am','10.30pm');
INSERT INTO Tourist values(10,'Kanchipuram',316,1,'TamilNadu','India',2300,3000,'Train','9.00 am','10.30pm');
INSERT INTO Tourist values(11,'Mangalore',323,1,'Karnataka','India',1000,3000,'Bus','8.00 am','11.30pm');
INSERT INTO Tourist values(12,'Ranchi',1834,4,'Jharkhand','India',7000,10000,'Flight','8.00 am','12.00pm');
INSERT INTO Tourist values(13,'Kolkata',1902,2,'West Bengal','India',6000,7000,'Flight','8.00 am','10.30pm');
INSERT INTO Tourist values(14,'Dubai',2680,4,'West Asia','United Arab Emirate',50000,10000,'Flight','9.00 am','11.30pm');
INSERT INTO Tourist values(15,'Goa',532,3,'Goa','India',4000,2300,'Flight','9.00 am','11.30pm');
INSERT INTO Tourist values(16,'Shillong',3002,5,'Meghalaya','India',320000,3000,'Flight','6.00 am','10.30pm');
INSERT INTO Tourist values(17,'Hyderabad',589,2,'Telangana','India',9000,6000,'Train','9.00 am','10.00pm');
INSERT INTO Tourist values(18,'New York',13340,7,'New York','America',500000,45000,'Flight','8.00 am','10.30pm');
INSERT INTO Tourist values(19,'Los Angeles',6221,15,'Los Angeles','California',30000,60000,'Flight','10.00 am','10.30pm');
INSERT INTO Tourist values(20,'Srilanka',1527,5,'Independent','Srilanka',10000,34000,'Flight','9.00 am','10.30pm');

select * from tourist;