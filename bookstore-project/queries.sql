#retreive all books along with their author and genre


select b.titel,a.name AS author , g.genre_name AS genre,b.price,b.publication_date,b.Stock
FROM books b join authors a on b.author_id=a.author_id
join genres g on b.gener_id=b.book_id;

#retreive total sales quantity for each book


SELECT b.titel,
SUM(s.quantity) AS 
total_sold
FROM sales s 
Join books b on s.book_id=b.book_id 
group by titel;

#Rereive total revanue genereted by each book

select b.titel,
SUM(s.quantity*b.price) as total_revenue
from sales s
join books b on s.book_id=b.book_id
group by titel;

#find the best-selling author

select a.name,
sum(s.quantity)as total_book_sold
from sales s
join books b on s.book_id=b.book_id
join authors a on b.author_id=a.author_id
group by a.name
order by total_book_sold
desc
limit 1;

select titel from books
where stock=0;