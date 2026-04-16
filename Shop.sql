CREATE DATABASE Shop;
USE Shop;

CREATE TABLE customerr_info(
    customerr_id CHAR(4) PRIMARY KEY,
    customerName VARCHAR(20) NOT NULL UNIQUE,
    psw VARCHAR(20) CHECK (CHAR_LENGTH(psw) > 8),
    email VARCHAR(30) CHECK (email LIKE '%@gmail.com'),
    phone_number BIGINT UNIQUE 
        CHECK (phone_number BETWEEN 1000000000 AND 9999999999)
);

DESC customerr_info;

INSERT INTO customerr_info 
VALUES ('A010', 'rohit_user', 'rohitpass99', 'rohituser@gmail.com', 9012345678);

DESC customerr_info;

SELECT * FROM customerr_info;