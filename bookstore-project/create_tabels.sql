CREATE DATABASE bookstore;
use bookstore;
CREATE TABLE books(
book_id INT auto_increment primary key,
titel varchar(225) NOT NULL,
author_id INT,
gener_id INT,
price decimal(10,2),
publication_date date,
Stock INT
);

CREATE TABLE authors(
author_id INT auto_increment primary key,
name varchar(225) NOT NULL
);
CREATE TABLE genres(
genre_id INT auto_increment primary key,
genre_name varchar(225) NOT NULL

);

CREATE TABLE sales(
sales_id INT auto_increment primary key,
book_id INT,
quantity INT,
sale_date Date,
foreign key(book_id) references books(book_id)
);