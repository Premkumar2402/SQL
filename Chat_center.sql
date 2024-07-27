CREATE TABLE chat_center (chat_id INT, user_id INT NOT NULL, user_name VARCHAR(50) NOT NULL, chat_message TEXT, chat_timestamp TIMESTAMP, message_length INT CHECK (message_length > 0), is_active BOOLEAN CHECK (is_active IN (TRUE, FALSE)), chat_type VARCHAR(20), chat_topic VARCHAR(70), last_updated TIMESTAMP);
INSERT INTO chat_center VALUES (1, 101, 'ASWIN', 'Hello, how are you?', NOW() , 18, TRUE, 'text', 'greeting', NOW());
INSERT INTO chat_center VALUES (2, 102, 'OSAMA', 'Hello, I am good', NOW() , 19, TRUE, 'text', 'Responce', NOW());
INSERT INTO chat_center VALUES (3, 103, 'Imran', 'Just working on a project', NOW() , 22, TRUE, 'text', 'Status', NOW());
INSERT INTO chat_center VALUES (4, 104, 'Siddik', 'Sure, I will send them', NOW() , 20, TRUE, 'text', 'promise', NOW());
INSERT INTO chat_center VALUES (5, 105, 'Kesavan', 'How are you?', NOW() , 20, TRUE, 'text', 'greeting', NOW());
INSERT INTO chat_center VALUES (6, 106, 'Muhammed', 'I will join at 11', NOW() , 20, TRUE, 'text', 'promise', NOW());
INSERT INTO chat_center VALUES (7, 107, 'Kareem', 'How is the project going?', NOW() , 20, TRUE, 'text', 'asking', NOW());
INSERT INTO chat_center VALUES (8, 108, 'Jevi', 'Yes, it is scheduled for 11 AM', NOW() , 20, TRUE, 'text', 'confirmation', NOW());
INSERT INTO chat_center VALUES (9, 109, 'Vikram', '9842777118', NOW() , 20, TRUE, 'number', 'message', NOW());
INSERT INTO chat_center VALUES (10, 110, 'Kavin', 'okay, i will come', NOW() , 20, TRUE, 'text', 'promise', NOW());
INSERT INTO chat_center VALUES (11, 111, 'Rafeek', 'okay, Thanks', NOW() , 20, TRUE, 'text', 'greeting', NOW());
INSERT INTO chat_center VALUES (12, 112, 'mujahid', 'when you come?', NOW() , 20, TRUE, 'text', 'question', NOW());
INSERT INTO chat_center VALUES (13, 113, 'kamal', 'are you okay?', NOW() , 20, TRUE, 'text', 'greeting', NOW());
INSERT INTO chat_center VALUES (14, 114, 'alvin', 'hi', NOW() , 02, TRUE, 'text', 'greeting', NOW());
INSERT INTO chat_center VALUES (15, 115, 'Oscar', 'do you have the agenda?', NOW() , 30, TRUE, 'text', 'request', NOW());
INSERT INTO chat_center VALUES (16, 116, 'Rita', 'do you have the agenda?', NOW() , 30, TRUE, text, 'request', NOW());
INSERT INTO chat_center VALUES (17, 117, 'janani', 'On track', NOW() , 30, TRUE, text, 'request', NOW());
INSERT INTO chat_center VALUES (18, 118, 'Premkumar', 'Great to hear, thanks for the update', NOW() , 30, TRUE, text, 'response', NOW());
INSERT INTO chat_center VALUES (19, 119, 'Tamim', 'Thanks, looking forward to it.', NOW() , 30, TRUE, text, 'response', NOW());
INSERT INTO chat_center VALUES (20, 120, 'rajesh', 'Thanks', NOW() , 30, TRUE, text, 'greeting', NOW());

ALTER TABLE chat_center MODIFY chat_type VARCHAR(20) NOT NULL;

ALTER TABLE chat_center ADD CONSTRAINT user_name_uni UNIQUE (user_name);

ALTER TABLE chat_center ADD CONSTRAINT user_id_chk CHECK (user_id > 0);

ALTER TABLE chat_center ADD CONSTRAINT message_length_chk CHECK (message_length > 0);

SELECT * FROM chat_center;