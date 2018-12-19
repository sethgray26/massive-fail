DROP TABLE IF EXISTS movies;
CREATE TABLE movies
(
  id SERIAL PRIMARY KEY,
  title TEXT,
  director TEXT,
  year integer,
  minutes integer
);

INSERT INTO movies(title, director, year, minutes)
VALUES
('Toy Story','John Lasseter','1995','81'),
('A Bugs Life','John Lasseter','1998','95'),
('Toy Story 2','John Lasseter','1999','93'),
('Monsters, Inc.','Pete Docter','2001','92'),
('Finding Nemo','Andrew Stanton','2003','107'),
('The Incredibles','Brad Bird','2004','116'),
('Cars','John Lasseter','2006','117'),
('Ratatouille','Brad Bird','2007','115'),
('WALL-E','Andrew Stanton','2008','104'),
('Up','Pete Docter','2009','101'),
('Toy Story 3','Lee Unkrich','2010','103'),
('Cars 2','John Lasseter','2011','120'),
('Brave','Brenda Chapman','2012','102'),
('Monsters University','Dan Scanlon','2013','110');


DROP TABLE IF EXISTS creditcards;
CREATE TABLE creditcards
(
  id SERIAL PRIMARY KEY,
  number TEXT,
  expiration TEXT
);

INSERT INTO creditcards (number, expiration)
VALUES
('1111222233334444', '10/21'),
('5555666677778888', '04/19'),
('9999000011112222', '08/20');

DROP TABLE IF EXISTS users;
CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
  email TEXT,
  password TEXT,
  passwordHash TEXT
);

INSERT INTO users (email, password, passwordHash)
VALUES
('sue@example.com', 'kittens', '2b$10$pNaUfwnEyu5TVjedSkraBejm0xRRNixJoz.2QB5W9KhuigfHi7wEy'),
('joe@example.com', '12345', '$2b$10$DXxF5j/mdsBR/VXH2ahg0.Pk4d5pcJJQsA24YHEAZE/A0L4Qip8b2'),
('liz@example.com', 'secret', '$2b$10$.cAFJo21ESS.kFO34Cgp/emjwe8KJUrK0mCNsDcdhITZ1QwyLX2GS');
