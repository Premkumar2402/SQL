CREATE DATABASE scam_details;
USE scam_details;
CREATE TABLE scam_info (scam_id INT,scam_title VARCHAR(100),affected_state VARCHAR(50),incident_year VARCHAR(4),money_involved FLOAT, people_count SMALLINT, mastermind VARCHAR(100), current_status VARCHAR(50),scam_category VARCHAR(50), additional_info TEXT);

ALTER TABLE scam_info ADD (reported_by VARCHAR(90));
ALTER TABLE scam_info ADD (investigating_agency VARCHAR(95));
ALTER TABLE scam_info ADD (case_verdict VARCHAR(60));
ALTER TABLE scam_info ADD (punishment_details TEXT);
ALTER TABLE scam_info ADD (compensation_awarded FLOAT);

ALTER TABLE scam_info RENAME COLUMN mastermind TO main_conspirator;
ALTER TABLE scam_info RENAME COLUMN people_count TO individuals_involved;
ALTER TABLE scam_info RENAME COLUMN money_involved_inr TO scam_amount_inr;
ALTER TABLE scam_info RENAME COLUMN incident_year TO year_of_scam;
ALTER TABLE scam_info RENAME COLUMN additional_info TO extra_details;

ALTER TABLE scam_info MODIFY COLUMN year_of_scam VARCHAR(4);
ALTER TABLE scam_info MODIFY COLUMN scam_amount_inr FLOAT;
ALTER TABLE scam_info MODIFY COLUMN individuals_involved SMALLINT;
ALTER TABLE scam_info MODIFY COLUMN punishment_details TEXT;
ALTER TABLE scam_info MODIFY COLUMN compensation_awarded FLOAT;

INSERT INTO scam_info  VALUES(1, '2G Spectrum Scam', 'Karnataka', '2008', 176000000000.00, 17, 'A. Raja', 'Closed', 'Telecom', 'One of the largest scams in India, involving telecom licenses', 'CBI', 'CBI', 'Guilty', 'Imprisonment and fines', 1000000000.00);
INSERT INTO scam_info  VALUES(2, 'Commonwealth Games Scam', 'Kolkata', '2010', 70000000000.00, 10, 'Suresh Kalmadi', 'Closed', 'Sports', 'Irregularities in the Commonwealth Games budget and execution', 'Media', 'CBI', 'Guilty', 'Imprisonment and fines', 500000000.00);
INSERT INTO scam_info  VALUES(3, 'Satyam Scam', 'Andhra Pradesh', '2009', 14000000000.00, 7, 'Ramalinga Raju', 'Closed', 'Corporate', 'Corporate fraud involving the manipulation of accounts', 'Employees', 'CBI', 'Guilty', 'Imprisonment and fines', 200000000.00);
INSERT INTO scam_info  VALUES(4, 'VVIP Chopper Scam', 'Tamil Nadu', '2013', 3600000000.00, 5, 'Christian Michel', 'Ongoing', 'Defense', 'Bribery and corruption in the procurement of VVIP helicopters', 'Media', 'CBI', 'Pending', 'N/A', 0.00);
INSERT INTO scam_info  VALUES(5, 'Coal Allocation Scam', 'Multiple', '2012', 186000000000.00, 8, 'Manmohan Singh', 'Closed', 'Natural Resources', 'Irregularities in the allocation of coal blocks', 'Media', 'CBI', 'Guilty', 'Imprisonment and fines', 1500000000.00);
INSERT INTO scam_info  VALUES(6, 'Telgi Stamp Paper Scam', 'Gujarat', '2002', 20000000000.00, 12, 'Abdul Karim Telgi', 'Closed', 'Forgery', 'Counterfeiting of stamp papers across multiple states', 'Police', 'CBI', 'Guilty', 'Imprisonment and fines', 300000000.00);
INSERT INTO scam_info  VALUES(7, 'Fodder Scam', 'Bihar', '1996', 950000000.00, 34, 'Lalu Prasad Yadav', 'Closed', 'Agriculture', 'Misappropriation of funds in the animal husbandry department', 'Employees', 'CBI', 'Guilty', 'Imprisonment and fines', 100000000.00);
INSERT INTO scam_info  VALUES(8, 'Vyapam Scam', 'Madhya Pradesh', '2013', 200000000.00, 50, 'Shivraj Singh Chouhan', 'Ongoing', 'Education', 'Admission and recruitment scam in Madhya Pradesh', 'Media', 'CBI', 'Pending', 'N/A', 0.00);
INSERT INTO scam_info  VALUES(9, 'PNB Fraud', 'Punjab', '2018', 11400000000.00, 2, 'Nirav Modi', 'Ongoing', 'Banking', 'Fraudulent transactions in Punjab National Bank', 'Bank Officials', 'CBI', 'Pending', 'N/A', 0.00);
INSERT INTO scam_info  VALUES(10, 'AgustaWestland Scam', 'Delhi', '2013', 3600000000.00, 5, 'Christian Michel', 'Ongoing', 'Defense', 'Bribery and corruption in the procurement of VVIP helicopters', 'Media', 'CBI', 'Pending', 'N/A', 0.00);
INSERT INTO scam_info  VALUES(11, 'Sahara Scam', 'Uttar Pradesh', '2014', 24000000000.00, 3, 'Subrata Roy', 'Ongoing', 'Finance', 'Illegal collection of deposits from investors', 'Investors', 'SEBI', 'Pending', 'N/A', 0.00);
INSERT INTO scam_info  VALUES(12, 'Saradha Chit Fund Scam', 'West Bengal', '2013', 24500000000.00, 20, 'Sudipta Sen', 'Closed', 'Finance', 'Ponzi scheme involving a large chit fund company', 'Investors', 'CBI', 'Guilty', 'Imprisonment and fines', 500000000.00);
INSERT INTO scam_info  VALUES(13, 'NSEL Scam', 'Maharashtra', '2013', 5600000000.00, 15, 'Jignesh Shah', 'Ongoing', 'Finance', 'Fraud in the National Spot Exchange Limited', 'Employees', 'ED', 'Pending', 'N/A', 0.00);
INSERT INTO scam_info  VALUES(14, 'Bank Loan Fraud', 'Multiple', '2018', 13000000000.00, 10, 'Vijay Mallya', 'Ongoing', 'Banking', 'Default on bank loans and money laundering', 'Banks', 'ED', 'Pending', 'N/A', 0.00);
INSERT INTO scam_info  VALUES(15, 'Adarsh Housing Scam', 'Maharashtra', '2010', 400000000.00, 6, 'Ashok Chavan', 'Closed', 'Real Estate', 'Misallocation of land meant for war widows', 'Residents', 'CBI', 'Guilty', 'Imprisonment and fines', 100000000.00);
INSERT INTO scam_info  VALUES(16, 'IPL Spot-Fixing', 'Multiple', '2013', 200000000.00, 3, 'S. Sreesanth', 'Closed', 'Sports', 'Spot-fixing in the Indian Premier League', 'Players', 'BCCI', 'Guilty', 'Lifetime ban', 0.00);
INSERT INTO scam_info  VALUES(17, 'CWG Scam', 'Delhi', '2010', 70000000000.00, 10, 'Suresh Kalmadi', 'Closed', 'Sports', 'Duplicate entry for testing', 'Media', 'CBI', 'Guilty', 'Imprisonment and fines', 500000000.00);
INSERT INTO scam_info  VALUES(18, 'Coal Scam', 'Multiple', '2012', 186000000000.00, 8, 'Manmohan Singh', 'Closed', 'Natural Resources', 'Duplicate entry for testing', 'Media', 'CBI', 'Guilty', 'Imprisonment and fines', 1500000000.00);
INSERT INTO scam_info  VALUES(19, 'Stamp Paper Scam', 'Maharashtra', '2002', 20000000000.00, 12, 'Abdul Karim Telgi', 'Closed', 'Forgery', 'Duplicate entry for testing', 'Police', 'CBI', 'Guilty', 'Imprisonment and fines', 300000000.00);
INSERT INTO scam_info  VALUES(20, 'Animal Husbandry Scam', 'Bihar', '1996', 950000000.00, 34, 'Lalu Prasad Yadav', 'Closed', 'Agriculture', 'Duplicate entry for testing', 'Employees', 'CBI', 'Guilty', 'Imprisonment and fines', 100000000.00);

SELECT * FROM scam_info;

UPDATE scam_info SET reported_by = 'CBI', investigating_agency = 'CBI' WHERE scam_id = 1;
UPDATE scam_info SET reported_by = 'Media', investigating_agency = 'CBI' WHERE scam_id = 2;
UPDATE scam_info SET reported_by = 'Employees', investigating_agency = 'CBI' WHERE scam_id = 3;
UPDATE scam_info SET reported_by = 'Media', investigating_agency = 'CBI' WHERE scam_id = 4;
UPDATE scam_info SET reported_by = 'Media', investigating_agency = 'CBI' WHERE scam_id = 5;
UPDATE scam_info SET reported_by = 'Police', investigating_agency = 'CBI' WHERE scam_id = 6;
UPDATE scam_info SET reported_by = 'Employees', investigating_agency = 'CBI' WHERE scam_id = 7;
UPDATE scam_info SET reported_by = 'CBI', investigating_agency = 'CBI' WHERE scam_id = 8;
UPDATE scam_info SET reported_by = 'Employees', investigating_agency = 'CBI' WHERE scam_id = 9;
UPDATE scam_info SET reported_by = 'Media', investigating_agency = 'CBI' WHERE scam_id = 10;

DELETE FROM scam_info WHERE scam_id = 1;
DELETE FROM scam_info WHERE scam_id = 12;
DELETE FROM scam_info WHERE scam_id = 10;

SELECT * FROM scam_info WHERE affected_state IN ('Tamil Nadu', 'Bihar');
SELECT * FROM scam_info WHERE scam_id NOT IN (3,9);