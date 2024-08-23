CREATE DATABASE state;

USE state;

CREATE TABLE state_info(state_id INT, state_name VARCHAR(40), state_code VARCHAR(15), population BIGINT, capital VARCHAR(35));

ALTER TABLE state_info ADD COLUMN governer VARCHAR(45), ADD COLUMN reg VARCHAR(15), ADD COLUMN timezone VARCHAR(50), ADD COLUMN S_bird VARCHAR(25), ADD COLUMN F_year INT; 

SELECT * FROM state_info;

ALTER TABLE state_info RENAME COLUMN population TO State_population, RENAME COLUMN reg TO Geo_Region, RENAME COLUMN capital TO State_capital, RENAME COLUMN S_bird TO State_bird, RENAME COLUMN F_year TO Total_District;

INSERT INTO state_info VALUES(26, 'TamilNadu', 'TN', 8.39, 'Chennai', 'R.N. Ravi', 'West', 'GMT+5:30', 'Dove', 38);
INSERT INTO state_info VALUES(20, 'Karnataka', 'KA', 68256000, 'Bangalore', 'Thawar Chand Gehlot', 'north', 'GMT+5:30', 'Indian roller', 31);
INSERT INTO state_info VALUES(14, 'Kerala', 'KL', 3.46, 'Thiruvananthapuram', 'Arif Muhammad Khan', 'south','GMT+5:30', 'Great hornbill', 14);
INSERT INTO state_info VALUES(17, 'Maharastra', 'MH', 13.16, 'Mumbai', 'Ramesh Bais', 'north', 'GMT+5:30', 'Yellow-footedGreenPigeon', 36);
INSERT INTO state_info VALUES(04, 'Assam', 'AS', 3.66, 'Dispur', 'Gulab Chand Kataria', 'north', 'GMT+5:30', 'wood duck', 35);
INSERT INTO state_info VALUES(13, 'JAMMU AND KASHMIR', 'JK', 1.56, 'Srinagar', 'Manoj Sinha', 'north', 'GMT+5:30', 'Kalij Pheasant',20);
INSERT INTO state_info VALUES(08, 'Delhi', 'DL', 32941000, 'New Delhi', 'VinaiKumar Saxena', 'north', 'GMT+5:30', 'House Sparrow',11);
INSERT INTO state_info VALUES(10, 'Gujarat', 'GJ', 32941000, 'Gandhinagar', 'Acharya Devvrat', 'north', 'GMT+5:30', 'House Sparrow',33);
INSERT INTO state_info VALUES(12, 'Himachal Pradesh', 'HP', 3294100, 'Shimla', 'Acharya', 'north', 'GMT+5:30', 'Western tragopan',12);
INSERT INTO state_info VALUES(29, 'West Bengal', 'WB', 3244100, 'Kolkata', 'osama', 'north', 'GMT+5:30', 'kingfisher',23);
INSERT INTO state_info VALUES(23, 'Puducherry', 'PY', 3244100, 'Puducherry', 'azees', 'west', 'GMT+5:30', 'Asian koe',04);
INSERT INTO state_info VALUES(25, 'Rajasthan', 'RJ', 3249890, 'jaipur', 'aswin', 'north-west', 'GMT+5:30', 'Bustard ',50);
INSERT INTO state_info VALUES(19, 'Meghalaya', 'ML', 3840000, 'Shillong', 'thameem', 'north-west', 'GMT+5:30', 'hill myna ',12);
INSERT INTO state_info VALUES(28, 'Uttar Pradesh', 'UP', 3640000, 'Lucknow', 'mujahid', 'north-south', 'GMT+5:30', 'sarus crane',75);
INSERT INTO state_info VALUES(29, 'West Bengal', 'WB', 1800000, 'Kolkata', 'mosina', 'north', 'GMT+5:30', 'kingfisher',23);
INSERT INTO state_info VALUES(24, 'Punjab', 'PJ', 2800000, 'Chandigarh', 'gunal khan', 'north', 'GMT+5:30', 'Northern Goshawk',23);
INSERT INTO state_info VALUES(16, 'Madhya Pradesh', 'MP', 2800500, 'Bhopal', 'khan', 'north-mid', 'GMT+5:30', 'Northern',21);
INSERT INTO state_info VALUES(30, 'Sikkim', 'SK', 2800500, 'Gangtok', 'haji', 'north-south', 'GMT+5:30', 'Northern',21);
INSERT INTO state_info VALUES(31, 'Mizoram', 'MZ', 2800900, 'hariyana', 'suhas', 'north-south', 'GMT+5:30', 'Northern',19);

UPDATE state_info SET State_population = 32941000 WHERE state_name = 'Sikkim';
SELECT * FROM state_info;
UPDATE state_info SET state_id= 31 WHERE governer= 'haji';
UPDATE state_info SET state_id = 19 WHERE governer= 'Aswin';

DELETE FROM state_info WHERE state_id=29;
DELETE FROM state_info WHERE governer='suhas';

SELECT * FROM state_info WHERE State_population = 2800500 AND Geo_Region = 'West';

SELECT * FROM state_info WHERE Geo_Region IN ('West', 'South');

SELECT * FROM state_info WHERE state_name NOT IN ('Karnataka');

SELECT * FROM state_info WHERE State_population = 50000000 OR State_population = 2800500;