CREATE DATABASE IF NOT EXISTS homework19;
USE homework19;
CREATE TABLE IF NOT EXISTS wallet
(
    wallet_id INT,
    currency VARCHAR(20),
    amount INT,
    user_id INT,
    created_date DATE,
    FOREIGN KEY (user_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE
    );
    
    CREATE TABLE IF NOT EXISTS user
(
    user_id INT,
    name VARCHAR(20),
    surname VARCHAR(20),
     date_of_registration_date DATE);
     
     INSERT wallet(wallet_id, currency, amount, user_id, created_date) 
VALUES 
(1, 'euro', 3400, 1, '2022-01-01'),
 (2, 'hryvnia', 432, 2, '2022-02-23'),
 (3, 'euro', 1000, 3, '2021-05-01'),
 (4, 'dollar', 3400, 4, '2006-11-01'),
 (5, 'pound', 18425, 5, '2021-01-18'),
 (6, 'hryvnia', 14563, 6, '2021-08-13'),
(7, 'euro', 1954, 7, '2019-04-23');

INSERT user(user_id, name, surname, date_of_registration_date) 
VALUES 
(1, 'John', 'Smith',  '2018-10-11'),
(2, 'Rozmari', 'Chorovski',  '2015-9-12'),
(3, 'Barak', 'Obama',  '2020-8-10'),
(4, 'Ozzy', 'Ozborn',  '1982-2-16'),
(5, 'Duke', 'Sanders',  '2018-12-01'),
(6, 'Kirk', 'Silverblade',  '2021-05-12'),
(7, 'Elrik', 'Sosnovski',  '2018-12-01');

SELECT * FROM wallet, user
WHERE wallet.user_id = user.user_id;
     
 SELECT u.name, w.currency, w.amount
FROM wallet AS w
JOIN user AS u
ON w.user_id = u.user_id;

TRUNCATE TABLE  user;
TRUNCATE TABLE wallet;






    
    


