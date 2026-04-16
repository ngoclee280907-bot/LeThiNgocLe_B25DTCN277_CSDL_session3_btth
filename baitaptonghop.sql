set SQL_SAFE_UPDATES = 0;
drop database if exists FashionShop;
create database FashionShop;
use FashionShop;
create table products (
    ProductID varchar(10) primary key,
    ProductName varchar(255),
    Size varchar(10),
    Price decimal(18, 2)
);

insert into products (ProductID, ProductName, Size, Price)
values 
('P01', 'Áo sơ mi trắng', 'L', 250000),
('P02', 'Quần Jean xanh', 'M', 450000),
('P03', 'Áo thun Basic', 'XL', 150000),
('P04', 'Áo hoodie', null, 200000);

update products 
set Price = 400000 
where ProductID = 'P02';

update products 
set Price = Price * 1.1;

delete from products 
where ProductID = 'P03';

select * from products;

select ProductName, Size 
from products;

select * from products 
where Price > 300000;