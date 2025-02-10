SELECT * FROM publishers;

SELECT * FROM books;

SELECT id FROM publishers WHERE publisher = 'Fitzcarraldo Editions';

SELECT title FROM books WHERE publisher_id = (SELECT id FROM publishers WHERE publisher = 'Fitzcarraldo Editions');

SELECT id FROM books WHERE title = 'Flights';

SELECT author_id FROM authored WHERE book_id = (SELECT id FROM books WHERE title = 'Flights');

SELECT * from authors WHERE id = 
	(SELECT author_id FROM authored WHERE book_id = 
		(SELECT id FROM books WHERE title = 'Flights'));

SELECT * FROM migrations;
SELECT * FROM sea_lions;


SELECT sea_lions.id, sea_lions.name, sea_lions.species, migrations.days, migrations.distance FROM sea_lions JOIN migrations ON sea_lions.id = migrations.id;

SELECT sea_lions.id, sea_lions.name, sea_lions.species, migrations.days, migrations.distance FROM sea_lions LEFT JOIN migrations ON sea_lions.id = migrations.id;
SELECT sea_lions.id, sea_lions.name, sea_lions.species, migrations.days, migrations.distance FROM sea_lions RIGHT JOIN migrations ON sea_lions.id = migrations.id;
SELECT sea_lions.id, sea_lions.name, sea_lions.species, migrations.days, migrations.distance FROM sea_lions LEFT JOIN migrations ON sea_lions.id = migrations.id
UNION
SELECT sea_lions.id, sea_lions.name, sea_lions.species, migrations.days, migrations.distance FROM sea_lions right JOIN migrations ON sea_lions.id = migrations.id;


SELECT * FROM ratings;
SELECT book_id, TRUNCATE(AVG(rating),2) FROM ratings GROUP BY book_id;

SELECT book_id, TRUNCATE(AVG(rating),1) AS avg_rating FROM ratings GROUP BY book_id HAVING avg_rating > 3.5;

-- AGGREGATE FUNCTIONS
SELECT book_id, ROUND(AVG(rating)) AS avg_rating FROM ratings GROUP BY book_id HAVING avg_rating > 3.5;
SELECT COUNT(rating) FROM ratings;
SELECT SUM(rating) FROM ratings;

SELECT MAX(rating) FROM ratings;
SELECT MIN(rating) FROM ratings;


CREATE TABLE users(
	user_id INT PRIMARY KEY auto_increment, 
    userName VARCHAR(200),
    email VARCHAR(200) unique not null,
    phone varchar(12),
    address TEXT
);


CREATE TABLE orders(
	order_id INT PRIMARY KEY auto_increment,
    quantity INT,
    user_id INT
);

ALTER TABLE orders ADD constraint foreign key (user_id) references users(user_id) ON DELETE CASCADE;
ALTER TABLE orders drop constraint orders_ibfk_1;


INSERT INTO users(userName,email, phone, address) VALUES 
('Aliyan','aliyan@gmail.com','+9234534454','North Nazimabad Karachi'),
('Zain','zain@gmail.com','+92676437637','Block L, Arfat Town Karachi'),
('Haseeb','haseeb@gmail.com','+9278744454','DHA Phase II Karachi'),
('Umer','umer@gmail.com','+9238989334','Gulistan -e- Johar Karachi');
-- ('Zasfdasdfsdin','+92676437637','Block L, Arfat Town Karachi');

SELECT * FROM users;

INSERT INTO orders(quantity, user_id) VALUES 
(20,7),
(10,6),
(34,6),
(5,9);


SELECT * FROM orders;


DELETE from users where user_id = 6;


SELECT * FROM collections;


CREATE TABLE transactions 
(
	id INT PRIMARY KEY auto_increment,
	title varchar(200),
    action varchar(200)
);

DELIMITER $$
CREATE TRIGGER SELL
AFTER DELETE
ON collections for each row
begin
	INSERT INTO transactions(title, action)
    VALUES (OLD.title,'sold');
end$$    
DELIMITER ;


select * from transactions;



DELETE FROM collections WHERE id = 5;



















