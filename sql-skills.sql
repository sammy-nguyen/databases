
--ARTIST TABLE
--- 1 Add 3 new artists to the artist table using INSERT. (It’s already created.)
INSERT INTO artist (name)
--VALUES('Beyonce')
--VALUES('Michael Jackson')
VALUES('Selena Gomez');
 select * from artist


--- 2 Select 5 artists in alphabetical order.
SELECT *
FROM artist
ORDER BY name ASC LIMIT 5;





--EMPLOYEE TABLE
---1 List all employee first and last names only that live in Calgary.
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

---2 Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards
SELECT *
FROM employee
WHERE reports_to = 2;


---3 Count how many people live in Lethbridge.
SELECT COUNT (*)
FROM employee
WHERE city = 'Lethbridge';






--INVOICE TABLE

--1 Count how many orders were made from the USA.
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

--2 Find the largest order total amount.
SELECT MAX(total)
FROM invoice;

--3 Find the smallest order total amount.
SELECT MIN(total)
FROM invoice;

--4 Find all orders bigger than $5.
SELECT *
FROM invoice
WHERE total > 5;

--5 Count how many orders were smaller than $5.
SELECT COUNT(*)
FROM invoice
WHERE total < 5;

--6  Get the total sum of the orders.
SELECT SUM(total)
FROM invoice;



--1 Get all invoices where the unit_price on the invoice_line is greater than $0.99.
select *
from invoice
join invoice_line
on invoice.invoice_id = invoice_line.invoice_id
where invoice_line.unit_price > 0.99;


--2 Get the invoice_date, customer first_name and last_name, and total from all invoices.
select invoice_date, customer.first_name, customer.last_name, total
from invoice
join customer
on invoice.customer_id = customer.customer_id;


--3 Get the customer first_name and last_name and the support rep’s first_name and
--last_name from all customers. Note that support reps are on the employee table.

select customer.first_name, customer.last_name, employee.first_name, employee.last_name
from customer
join employee
on employee.employee_id = customer.support_rep_id;



-- 4 Get the album title and the artist name from all albums.
select album.title, artist.name
from album
join artist
on album.artist_id = artist.artist_id;
