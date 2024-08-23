CREATE DATABASE details;
USE details;
CREATE TABLE show_room( id INT, name VARCHAR(50) NOT NULL, address VARCHAR(55), phone_number BIGINT(15) UNIQUE, email VARCHAR(60) UNIQUE, floor_number INT CHECK (floor_number >= 0), room_size DECIMAL(10, 2), available BOOLEAN NOT NULL, opening_time TIME, closing_time TIME, CONSTRAINT opening_time_chk CHECK(opening_time < closing_time));
INSERT INTO show_room VALUES(1, 'Toyato Show Room', '2nd cross, white field, Bangalore', 9803456087, 'toyatowhitefield@gmail.in', 0, 200.50, false, '09:00:00', '19:00:00');
INSERT INTO show_room VALUES(2, 'Yamaha Show Room', '1st cross, majestic,Bangalore', 9834256087, 'yamahamajestic@gmail.in', 0, 200.500, true, '09:00:00', '19:00:00');
INSERT INTO show_room VALUES(3, 'suzuki Show Room', '5nd cross, yeswantpura, Bangalore', 8503456657, 'suzukibangalore@gmail.in', 1, 500.50, true, '09:00:00', '17:00:00');
INSERT INTO show_room VALUES(4, 'Samsung Show Room', '6nd cross, MG Road, Bangalore', 8090456657, 'Samsungmgroad@gmail.in', 2, 500.500, true, '09:00:00', '19:00:00');
INSERT INTO show_room VALUES(5, 'Apple Show Room', '7nd cross,  KR Market, Bangalore', 8087456657, 'applekrmarket@gmail.in', 2, 800.500, false, '10:00:00', '18:00:00');
INSERT INTO show_room VALUES(6, 'TVS Show Room', '12nd cross,  rajajinagar, Bangalore', 8776456657, 'tvsrajajinagar@gmail.in', 1, 300.500, true, '10:00:00', '19:00:00');
INSERT INTO show_room VALUES(7, ' Ather EV Show Room', '10th cross,  huskurgate, Bangalore', 8087408767, 'atherevhuskur@gmail.in', 0, 350.500, true, '11:00:00', '18:00:00');
INSERT INTO show_room VALUES(8, ' OLA EV Show Room', '18th cross, marvadi, Bangalore', 7054408767, 'olaev@gmail.in', 1, 480.50, true, '10:00:00', '18:00:00');
INSERT INTO show_room VALUES(9, ' Max Show Room', '4th cross,main road,rajajinagar, Bangalore', 7654408767, 'maxcloth@gmail.in', 0, 500.500, true, '11:00:00', '19:00:00');
INSERT INTO show_room VALUES(10, 'US Polo Show Room', '15th cross,main road,majestic, Bangalore', 7652390867, 'uspolo@gmail.in', 1, 500.400, true, '10:00:00', '18:00:00');
INSERT INTO show_room VALUES(11, 'PeterEngland Show Room', '2nd cross,sivajinagar, Bangalore', 9842760823, 'peterengland@gmail.in', 2, 550.400, true, '10:00:00', '18:00:00');
INSERT INTO show_room VALUES(12, 'Derby Show Room', '4nd NH,Dharmapuri,tamilnadu', 9842777224, 'derbycloth@gmail.in', 1, 550.200, true, '10:00:00', '17:00:00');
INSERT INTO show_room VALUES(13, ' Audi Show Room', '5nd NH Road,Bangalore', 9842654734, 'audicars@gmail.in', 0, 800.800, true, '10:00:00', '17:00:00');
INSERT INTO show_room VALUES(14, 'Tata Motor Show Room', '5nd NH Road,Hosur', 8066654734, 'tatamotors@gmail.in', 0, 800.800, false, '10:00:00', '17:00:00');
INSERT INTO show_room VALUES(15, 'OnePlus Show Room', '5nd,lulumal,kerala', 8066654734, 'oneplus@gmail.in', 0, 800.500, true, '10:00:00', '19:00:00');
INSERT INTO show_room VALUES(16, 'Royal Enfield Show Room', '5nd NH Road,Dharmapuri', 8066345624, 'royalendielddpi@gmail.in', 0, 500.840, true, '09:00:00', '15:00:00');
INSERT INTO show_room VALUES(17, 'unlimited cloth Show Room', '1st NH mian Road,Dharmapuri', 9666345024, 'unlimiteddpi@gmail.in', 1, 3500.40, false, '09:00:00', '18:00:00');
INSERT INTO show_room VALUES(18, 'zudio Show Room', 'lulu mall complex,bengalore', 7811093024, 'zudiocloth@gmail.in', 2, 600.600, true, '10:00:00', '20:00:00');
INSERT INTO show_room VALUES(19, 'lenskart Show Room', '1st chinnasamy cross Road,Dharmapuri', 9952644587, 'lenskartdpi@gmail.in', 2, 500.540, true, '09:00:00', '17:00:00');
INSERT INTO show_room VALUES(20, 'Titan Show Room', '5nd NH Road,Hosur', 8097800231, 'titandpi@gmail.in', 1, 800.800, false, '10:00:00', '17:00:00');

ALTER TABLE show_room MODIFY id int NOT NULL;

ALTER TABLE show_room ADD CONSTRAINT phone_number_uni UNIQUE (phone_number);

ALTER TABLE show_room ADD CONSTRAINT established_date_chk CHECK (opening_time < closing_time);

ALTER TABLE show_room ADD CONSTRAINT floor_number CHECK (id <=0);

SELECT * FROM show_room;