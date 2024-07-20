insert INTO authors (name)
values ('Hana saed'),
('Mohammed Esmet'),
('Shaimaa Sabry');


insert into genres (genre_name)
values ('fantasy'),
('scince fiction'),
('Dystopian');


insert into books(titel,author_id,gener_id,price,publication_date,stock)
values('Harry Potter',1,1,19.99,'1997-06-26',50),
('1997',2,3,25.22,'2203-03-19',40),
('The Hobbit',3,1,50.5,'1937-09-21',40);

insert into sales(book_id,quantity,sale_date)
values(1,3,'2024-07-01'),
(2,2,'2024-07-03'),
(1,1,'2024-07-05'),
(3,4,'2024-07-06');