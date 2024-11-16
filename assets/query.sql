/*Домашнє завдання до Теми 3. Завантаження даних та основи SQL. DQL команди*/
/*Schema name - `goit-rdb-hw-03`*/

/*1*/
select p.*
from `goit-rdb-hw-03`.products p;

select s.name, s.phone
from `goit-rdb-hw-03`.shippers s;

/*2*/
select avg(p.price) as avg_price, max(p.price) as max_price, min(p.price) as min_price
from `goit-rdb-hw-03`.products p;

/*3*/
select distinct p.category_id, p.price
from `goit-rdb-hw-03`.products p
order by p.price desc
limit 10;

/*4*/
select count(p.id) as products_count
from `goit-rdb-hw-03`.products p
where p.price between 20 and 100;

/*5*/
select p.supplier_id, count(p.id) as products_count, avg(p.price) as avg_price
from `goit-rdb-hw-03`.products p
group by p.supplier_id;