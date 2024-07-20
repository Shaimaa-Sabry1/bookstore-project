update books
SET Stock=Stock-(select quantity from sales where book_id=books.book_id and sales_id=1)
where book_id=(select book_id from sales where sales_id=1);

delete from sales where book_id=2;

delete from books where book_id=2;