drop DATABASE IF EXISTS `myresearch`;
CREATE DATABASE `myresearch`;
CREATE TABLE `myresearch`.`book` (
  `Id Book` INT NOT NULL,
  `Name` VARCHAR(250) NULL,
  `Id author` VARCHAR(45) NULL,
  `Info` VARCHAR(250) NULL,
  `Price` VARCHAR(250) NULL,
  PRIMARY KEY (`id Book`));

CREATE TABLE  `myresearch`.`client` (
  `Id Client` INT NOT NULL,
  `Name` VARCHAR(250) NULL,
  `Id book` VARCHAR(45) NULL,
  `Date to rents` VARCHAR(250) NULL,
  `Date to return` VARCHAR(250) NULL,
  PRIMARY KEY (`Id Client`));

CREATE TABLE `myresearch`.`author` (
  `Id Author` INT NOT NULL,
  `Name` VARCHAR(250) NULL,
  `Info` VARCHAR(250) NULL,
  PRIMARY KEY (`Id Author`));

insert into `myresearch`.`book` values('1', 'firstBook', '001', 'this Book is very amazing', '100');
insert into `myresearch`.`book` values('2', 'secondBook', '002', 'this Book descrip how world is', '300');
insert into `myresearch`.`book` values('3', 'thirdBook', '003', 'this Book should reading', '90');

insert into `myresearch`.`author` values ('001', 'Jhon', 'This author is skillful ');
insert into `myresearch`.`author` values ('002', 'Tom' , 'This author is amazing ');
insert into `myresearch`.`author` values ('003', 'rony' , 'its books is good');

insert into `myresearch`.`client` values ('00001', 'Client1', '1', '1/1/2020', '1/11/2020');
insert into `myresearch`.`client` values ('00002', 'Client2', '2', '6/5/2020','6/16/2020');
insert into `myresearch`.`client` values ('00003', 'Client3', '3', '6/20/2020','7/1/2020');


select * from `myresearch`.`book`;
select * from `myresearch`.`author`;
select * from `myresearch`.`client`;

select Name from myresearch.book;
select Name from myresearch.book where `Id book` = 2;
select Name, `Id book` from myresearch.client where `Id client` = 3; 
select Name from myresearch.client where `Date To return` = (select max(`Date to return`) from myresearch.client); 

select distinct Name from myresearch.book; 
select COUNT(distinct Name) from myresearch.author; 

select * from myresearch.client order by `Id client`;
select * from myresearch.client limit 1 offset 2;
select * from myresearch.author order by `Id author`limit 0,2;

select AVG(Price) from myresearch.book;
select SUM(Price) from myresearch.book;
select COUNt(`Id client`) from myresearch.client;

select min(`Date to return`) from myresearch.client;
select max(`Date to return`) from myresearch.client;

select * from myresearch.book limit 2;
select * from myresearch.client where `Id client` =  (select count(name) from myresearch.client);
select Name from myresearch.client where Name like 'c%';
select Name from myresearch.client where Name like '%1';
select `Date to rents` from myresearch.client where `Date to rents` like '%6%';

select Name from myresearch.author where Name in ('jhon', 'ali');
select Name from myresearch.author where Name in (select Name from myresearch.author);

select Price from myresearch.book where Price between 50 and 100 ;
select Price from myresearch.book where Price between (select count(Price) from myresearch.book ) and 100 ;

select book.Name, author.Name from myresearch.book inner join myresearch.author on book.Name = author.Name;
select book.Name, author.Name from myresearch.book left join myresearch.author on book.Name = author.Name;
select book.Name, author.Name from myresearch.book right join myresearch.author on book.Name = author.Name;
select * from myresearch.client left join myresearch.book on client.Name = book.Name
 union select * from myresearch.client right join myresearch.book on client.Name = book.Name ;
select t1.Name, t2.Name from myresearch.book t1  left join myresearch.author t2  on t1.Name = t2.Name ;


update myresearch.book SET Name = 'The New Book Updated' where `Id book` = 1; 
update myresearch.book set Price = 150 where `Id book` = 2;
update myresearch.client set Name = 'The first Client' where `Id client` = 00001;
update myresearch.client set `Date to return` = '20/6/2020' where `Id client` = 00002;
update myresearch.author set Info = 'This Author is Not skillful' where `Id author` = 001;
update myresearch.author set Name = 'Micheal'; 

select `Name` from `myresearch`.`book` where `Id Author` = '001';
select `Info` from `myresearch`.`book`;

delete from myresearch.book where `Id book` = 1;
delete from myresearch.book where `Id book` = '2';
delete from myresearch.client where `Id client` = 2; 
delete from myresearch.client;
delete from myresearch.author where `Id author` = 001;
delete from myresearch.author;

select * from `myresearch`.`book`;
select * from `myresearch`.`author`;
select * from `myresearch`.`client`;

select Name from myresearch.book;
select Name from myresearch.book where `Id book` = 2;
select Name, `Id book` from myresearch.client where `Id client` = 3; 
select Name from myresearch.client where `Date To return` = (select max(`Date to return`) from myresearch.client); 

select distinct Name from myresearch.book; 
select COUNT(distinct Name) from myresearch.author; 

select * from myresearch.client order by `Id client`;
select * from myresearch.client limit 1 offset 2;
select * from myresearch.author order by `Id author`limit 0,2;

select AVG(Price) from myresearch.book;
select SUM(Price) from myresearch.book;
select COUNt(`Id client`) from myresearch.client;

select min(`Date to return`) from myresearch.client;
select max(`Date to return`) from myresearch.client;

select * from myresearch.book limit 2;
select Name from myresearch.client where Name like 'c%';
select Name from myresearch.client where Name like '%1';
select `Date to rents` from myresearch.client where `Date to rents` like '%6%';

select Name from myresearch.author where Name in ('jhon', 'ali');
select Name from myresearch.author where Name in (select Name from myresearch.author);

select Price from myresearch.book where Price between 50 and 100 ;
