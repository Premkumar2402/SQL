CREATE DATABASE xworkz;
CREATE TABLE students(id INT PRIMARY KEY, student_name VARCHAR(30) UNIQUE, course_name VARCHAR(30) NOT NULL, batch VARCHAR(15) NOT NULL, timing VARCHAR(20) NOT NULL);
INSERT INTO students VALUES(1, 'Aswin', 'Core Java', 'CH17ROM', '8:00 AM');
INSERT INTO students VALUES(2, 'AswinI', 'Core Java', 'CH17ROM', '8:00 AM');
INSERT INTO students VALUES(3, 'Aisha', 'Core Java', 'CH17ROM', '8:00 AM');
INSERT INTO students VALUES(4, 'Andrew', 'Core Java', 'CH17ROM', '8:00 AM');
INSERT INTO students VALUES(5, 'BanuPriya', 'Core Java', 'CH17ROM', '8:00 AM');
INSERT INTO students VALUES(6, 'Basha', 'Core Java', 'CH17ROM', '8:00 AM');
INSERT INTO students VALUES(7, 'Fazil', 'Core Java', 'CH17ROM', '8:00 AM');
INSERT INTO students VALUES(8, 'Ibrahim', 'Core Java', 'CH17ROM', '8:00 AM');
INSERT INTO students VALUES(9, 'Jullie', 'Core Java', 'CH17ROM', '8:00 AM');
INSERT INTO students VALUES(10, 'Jack', 'Core Java', 'CH17ROM', '8:00 AM');

SELECT * FROM students;

SELECT * FROM students WHERE id BETWEEN 1 AND 5;

SELECT * FROM students WHERE student_name LIKE 'A%';
SELECT * FROM students WHERE student_name LIKE '%a';
SELECT * FROM students WHERE student_name LIKE '_a%';

SELECT * FROM students ORDER BY id;
SELECT * FROM students ORDER BY student_name DESC;

SELECT lower(batch) FROM students;
SELECT upper(batch) FROM students;
SELECT concat(student_name, batch) FROM students;

SELECT length(student_name) as leng, student_name FROM students;

SELECT INSTR('RAJAJINAGAR', 'i');

CREATE TABLE social_media(id INT PRIMARY KEY, app_name VARCHAR(30) NOT NULL, downloader INT UNIQUE, size INT NOT NULL, current_version VARCHAR(30));
INSERT INTO social_media VALUES(1, 'Whatsapp', 1000000, 32, '09.27.27.00');
INSERT INTO social_media VALUES(2, 'Instagram', 1100000, 33, '10.27.28.00');
INSERT INTO social_media VALUES(3, 'SnapChat', 1200000, 42, '09.21.21.05');
INSERT INTO social_media VALUES(4, 'Telegram', 900000, 65, '05.20.2.100');
INSERT INTO social_media VALUES(5, 'Twitter', 1150000, 70, '02.22.23.07');
INSERT INTO social_media VALUES(6, 'FaceBook', 1650000, 58, '13.20.22.0');
INSERT INTO social_media VALUES(7, 'Youtube', 1780000, 38, '24.09.20.01');
INSERT INTO social_media VALUES(8, 'E-Mail', 1500000, 60, '07.28.29.04');
INSERT INTO social_media VALUES(9, 'GitHub', 1982000, 65, '07.26.28.09');
INSERT INTO social_media VALUES(10, 'Frnd', 1987050, 100, '06.27.13.25');

SELECT * FROM social_media;

SELECT * FROM social_media WHERE id BETWEEN 1 AND 5;

SELECT * FROM social_media WHERE app_name LIKE 'T%';
SELECT * FROM social_media WHERE app_name LIKE '%a';
SELECT * FROM social_media WHERE app_name LIKE '_n%';

SELECT * FROM social_media ORDER BY id;
SELECT * FROM social_media ORDER BY app_name DESC;

SELECT lower(app_name) FROM social_media;
SELECT upper(app_name) FROM social_media;
SELECT concat(id, app_name) FROM social_media;

SELECT length(app_name) as leng, app_name FROM social_media;

SELECT INSTR('Playstore', 's');