CREATE DATABASE social_network_db;
USE social_network_db;
CREATE TABLE users (
    user_id CHAR(4) PRIMARY KEY,
    username VARCHAR(20) UNIQUE NOT NULL,
    phone BIGINT UNIQUE,
    dob DATE,
    city VARCHAR(20) DEFAULT 'India'
);
INSERT INTO users VALUES
('U401','Ajay',9000000001,'2001-01-01','Delhi'),
('U402','Bina',9000000002,'2002-02-02','Mumbai'),
('U403','Chetan',9000000003,'2003-03-03','Pune'),
('U404','Deepa',9000000004,'2004-04-04','Chennai'),
('U405','Eshan',9000000005,'2005-05-05','Bangalore'),
('U406','Farah',9000000006,'2006-06-06','Hyderabad'),
('U407','Gaurav',9000000007,'2007-07-07','Kolkata'),
('U408','Hema',9000000008,'2008-08-08','Jaipur'),
('U409','Imran',9000000009,'2009-09-09','Lucknow'),
('U410','Jyoti',9000000010,'2010-10-10','Indore'),
('U411','Kamal',9000000011,'2011-11-11','Nagpur'),
('U412','Lata',9000000012,'2012-12-12','Surat'),
('U413','Manish',9000000013,'2013-01-13','Bhopal'),
('U414','Nisha',9000000014,'2014-02-14','Patna'),
('U415','Om',9000000015,'2015-03-15','Goa');

SELECT * FROM users;
CREATE TABLE posts (
    post_id INT PRIMARY KEY,
    content VARCHAR(200),
    post_date DATE,
    user_id CHAR(4),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO posts VALUES
(501,'Post A','2024-01-01','U401'),
(502,'Post B','2024-01-02','U402'),
(503,'Post C','2024-01-03','U403'),
(504,'Post D','2024-01-04','U404'),
(505,'Post E','2024-01-05','U405'),
(506,'Post F','2024-01-06','U406'),
(507,'Post G','2024-01-07','U407'),
(508,'Post H','2024-01-08','U408'),
(509,'Post I','2024-01-09','U409'),
(510,'Post J','2024-01-10','U410'),
(511,'Post K','2024-01-11','U411'),
(512,'Post L','2024-01-12','U412'),
(513,'Post M','2024-01-13','U413'),
(514,'Post N','2024-01-14','U414'),
(515,'Post O','2024-01-15','U415');

SELECT * FROM posts;
CREATE TABLE comments (
    comment_id INT PRIMARY KEY,
    text VARCHAR(150),
    post_id INT,
    user_id CHAR(4),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO comments VALUES
(1,'Nice',501,'U402'),
(2,'Good',502,'U403'),
(3,'Awesome',503,'U404'),
(4,'Great',504,'U405'),
(5,'Super',505,'U406'),
(6,'Cool',506,'U407'),
(7,'Wow',507,'U408'),
(8,'Amazing',508,'U409'),
(9,'Lovely',509,'U410'),
(10,'Well done',510,'U411'),
(11,'Perfect',511,'U412'),
(12,'Interesting',512,'U413'),
(13,'Nice work',513,'U414'),
(14,'Fantastic',514,'U415'),
(15,'Brilliant',515,'U401');

SELECT * FROM comments;
CREATE TABLE likes (
    like_id INT PRIMARY KEY,
    user_id CHAR(4),
    post_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id)
);
INSERT INTO likes VALUES
(1,'U401',501),
(2,'U402',502),
(3,'U403',503),
(4,'U404',504),
(5,'U405',505),
(6,'U406',506),
(7,'U407',507),
(8,'U408',508),
(9,'U409',509),
(10,'U410',510),
(11,'U411',511),
(12,'U412',512),
(13,'U413',513),
(14,'U414',514),
(15,'U415',515);

SELECT * FROM likes;
CREATE TABLE friends (
    friend_id INT PRIMARY KEY,
    user_id CHAR(4),
    friend_user_id CHAR(4),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (friend_user_id) REFERENCES users(user_id)
);
INSERT INTO friends VALUES
(1,'U401','U402'),
(2,'U402','U403'),
(3,'U403','U404'),
(4,'U404','U405'),
(5,'U405','U406'),
(6,'U406','U407'),
(7,'U407','U408'),
(8,'U408','U409'),
(9,'U409','U410'),
(10,'U410','U411'),
(11,'U411','U412'),
(12,'U412','U413'),
(13,'U413','U414'),
(14,'U414','U415'),
(15,'U415','U401');

SELECT * FROM friends;
CREATE TABLE messages (
    message_id INT PRIMARY KEY,
    sender_id CHAR(4),
    receiver_id CHAR(4),
    message_text VARCHAR(200),
    FOREIGN KEY (sender_id) REFERENCES users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES users(user_id)
);
INSERT INTO messages VALUES
(1,'U401','U402','Hi'),
(2,'U402','U403','Hello'),
(3,'U403','U404','Good morning'),
(4,'U404','U405','How are you'),
(5,'U405','U406','Fine'),
(6,'U406','U407','What’s up'),
(7,'U407','U408','Nothing much'),
(8,'U408','U409','Hey'),
(9,'U409','U410','Yo'),
(10,'U410','U411','Check this'),
(11,'U411','U412','Sure'),
(12,'U412','U413','Okay'),
(13,'U413','U414','Done'),
(14,'U414','U415','Thanks'),
(15,'U415','U401','Welcome');

SELECT * FROM messages;