use alfi;

create table products(product_id int primary key,product_name varchar(50),category varchar(30),price decimal(10,2),stock_qty int);
insert into products(product_id,product_name,category,price,stock_qty)
values(101,'wireless mouse','electronics',499.00,120),
(102,'office chair','furniture',3499.00,40),
(103,'bluetooth speaker','electronics',1299.00,75),
(104,'notebook pack','stationery',199.00,300),
(105,'study table','furniture',5499.00,15),
(106,'usb cable','electronics',149.00,500);
select*from products;
select product_name,price from products where price > 1000 order by price desc;

create table cust(cust_id int primary key auto_increment,cust_name varchar(50),city varchar(30),signup_date date);
insert into cust(cust_id,cust_name,city,signup_date)
values(1,'anjali menon','kozhikode','2024-01-12'),
(2,'ravi nair','kochi','2024-02-03'),
(3,'fathima beevi','kozhikode','2024-02-20'),
(4,'sreejith k','thrissur','2024-03-05'),
(5,'devika s','kannur','2024-03-18'),
(6,'muhammed ashraf','kozhikode','2024-04,01');

select*from cust;

select cust_name, signup_date from cust
where city='kozhikode';

create table employs(employs_id int primary key auto_increment,employs_name varchar(50),department varchar(50),salary int);
insert into employs(employs_id,employs_name,department,salary)
values(1,'arun prakesh','sales',35000),
(2,'betty thomas','IT',68000),
(3,'cyril joseph','IT',92000),
(4,'divya raj','HR',41000),
(5,'ershad raj','sales',55000),
(6,'farha sultana','finance',70000);
select*from employs;
select employs_name,salary from employs 
where salary between 40000 and 70000
order by salary asc;

create table orde(order_id int primary key auto_increment,customer_id int,delivery_date date,order_status varchar(20));
insert into orde(order_id,customer_id,delivery_date,order_status)
values(5001,1,'2024-05-10','delivered'),
(5002,2,null,'processing'),
(5003,3,'2024-05-14','delivered'),
(5004,1,null,'shipped'),
(5005,4,null,'processing');
select*from orde;
select order_id,customer_id from orde
where delivery_date is null;

create table product(product_id int primary key auto_increment,product_name varchar(50),price decimal(10,2));
insert into product(product_id,product_name,price)
values(201,'smartphonex200',15999.00),
(202,'headphone pro',2499.00),
(203,'laptop sleeve',699.00),
(204,'phone charger',399.00),
(205,'tablet stand',899.00);
select*from product;
select product_name,price from product
where lower (product_name)like'%phone%';

create table ord(ord_id int primary key auto_increment,customer_id int,product_category varchar(30));
insert into ord(ord_id,customer_id,product_category)
values(1,1,'electronics'),
(2,2,'furniture'),
(3,3,'electronics'),
(4,1,'stationery'),
(5,4,'furniture'),
(6,2,'electronics');
select*from ord;
select product_category from ord;

create table employeees(emp_id int primary key auto_increment,emp_name varchar(50), dept_id int ,salary int);
insert into employeees(emp_id,emp_name,dept_id,salary)
values(1,'nikhil varma',10,45000),
(2,'priya suresh',20,52000),
(3,'rahul menon',10,61000),
(4,'sana fathima',30,48000);
select*from employeees;

create table department(dept_id int primary key,dept_name varchar(30));
insert into department(dept_id,dept_name)
values(10,'sales'),
(20,'markerting'),
(30,'support');
select*from department;

select e.emp_name,d.dept_name from employeees e 
inner join department d
on e.dept_id = d.dept_id;

create table customers(customer_id int primary key auto_increment,customer_name varchar(50));
insert into customers(customer_id, customer_name)
values(1,'anoop krishnan'),
(2,'bindu rajan'),
(3,'chandran p'),
(4,'deepa mohan');
select*from customers;

create table orders(order_id int primary key, customer_id int ,order_amount int);
insert into orders(order_id,customer_id,order_amount)
values(1,1,1200),
(2,3,800),
(3,1,450);
select*from orders;

select customer_name
 from customers 
where customer_name in ('bindu rajan','deepa mohan');

create table ords(ords_id int ,custo_id int,quantity int);

create table custo(custo_id int,custo_name varchar(50));
insert into custo(custo_id,custo_name)
values(1,'vishu das'),
(2,'meera pillai');
select*from custo;
create table produ(product_id int primary key, product_name varchar(50));
insert into produ(product_id,product_name)
values('501','notebook'),
('502','desk lamp'),
('503','pen set');
select*from produ;
create table ords(ords_id int,customer_id int,product_id int,quantity int);
insert into ords(ords_id,customer_id,product_id,quantity)
values(1,1,501,2),
(2,2,502,1),
(3,1,503,4);
select*from ords;
select o.ords_id,
c.custo_name,
p.product_name,
o.quantity 
from ords o
join custo c
   on o.customer_id = c.custo_id
join produ p 
   on o.product_id = p.product_id;

create table emplo(emp_id int primary key,emp_name varchar(50),manager_id int,salary int);
insert into emplo(emp_id,emp_name,manager_id,salary)
values(1,'george mathew',null,95000),
(2,'hema kumari',1,98000),
(3,'irfan basheer',1,70000),
(4,'jyothi lal',3,72000);
 
 select emp_name
 from emplo 
 where emp_name in ('hema kumari','jyothi lal');
 
create table depart(dept_id int primary key,dept_name varchar(30));
insert into depart(dept_id,dept_name)
values(1,'sales'),
(2,'R&D'),
(3,'legal'),
(4,'support');

select*from depart;

create table employ(emp_id int primary key auto_increment,emp_name varchar(50),dept_id int);
insert into employ(emp_id,emp_name,dept_id)
values(1,'aravind s',1),
(2,'bhavana r',1),
(3,'cini thomas',4);

select*from employ;

select dept_name
 from depart
 where dept_name in ('R&D','legal');
 
 create table customerss(customerss_id int primary key,customers_name varchar(50));
 insert into customerss (customerss_id,customers_name)
 values(1,'kiran babu'),
 (2,'lekshmi priya'),
 (3,'manoj kumar');
 select*from customerss;
 
 create table orderss(orderss_id int,customers_id int);
 insert into orderss(orderss_id,customers_id)
 values(1,1),
 (2,1),
 (3,2);

select c.customers_name,
count(o.orderss_id) as total_orders
 from customerss as c 
 left join orderss as o 
 on c.customerss_id=o.customers_id 
 group by c.customerss_id,c.customers_name;
 
 create table transa(txn_id int,account_id int,txn_type varchar(10),amount int);
 insert into transa(txn_id,account_id,txn_type,amount)
 values(1,301,'deposit',5000),
 (2,301,'withdraw',1000),
 (3,302,'deposit',2000),
 (4,301,'deposit',3000),
 (5,302,'deposit',1500);
 
 select account_id, sum(amount)as total_deposit
 from transa
 where txn_type='deposit'
 group by account_id;
 
 create table em(em_id int,dept_name varchar(30),salary int);
 insert into em(em_id,dept_name,salary)
 values(1,'it',60000),
 (2,'it',75000),
 (3,'hr',40000),
 (4,'hr',46000),
 (5,'it',50000);
 
 select dept_name,round(avg(salary),2)
 as avg_salary
 from em
 group by dept_name;
 
 create table loan (loan_id int primary key,branch varchar(50), customer_name varchar(50),loan_amount int);
 insert into loan (loan_id,branch, customer_name,loan_amount)
 values(1,'kozhikode main','rajesh p',500000),
 (2,'kozhikode main','sita devi',750000),
 (3,'kochi branch','thomas k',300000),
 (4,'kochi branch','uma shankar',62000);
 select*from loan;
 
 select branch, max(loan_amount)as highest_loan_amount
 from loan
 group by branch;
 
 create table sales(sale_id int primary key auto_increment, category varchar(30),month varchar(10),revenue int);
 insert into sales(sale_id,category,month,revenue)
 values(1,'electronics','jan',40000),
 (2,'furniture','jan',25000),
 (3,'electronics','feb',35000),
 (4,'furniture','feb',18000),
 (5,'stationery','jan',5000);
 select category,sum(revenue)as total_revenue 
 from sales
 group by category;
 
 create table accounts(account_id int primary key,account_type varchar(20),balance int);
 insert into accounts(account_id,account_type,balance)
 values(1,'savings',15000),
 (2,'current',40000),
 (3,'savings',80000),
 (4,'savings',22000),
 (5,'current',61000);
 select account_type, count(*) as account_count
 from accounts
 group by account_type;
 

 create table transactions(txn_id int primary key,branch varchar(30),txn_type varchar(10),amount int);
 insert into transactions(txn_id,branch,txn_type,amount)
 values(1,'kozhikode main','deposit',60000),
 (2,'kozhikode main','deposit',55000),
 (3,'kochi branch','deposit',40000),
 (4,'kochi branch','withdraw',10000),
 (5,'thrissur branch','deposit',120000);
 
 select*from transactions;
select branch, sum(amount) as total_deposit
from transactions
where txn_type ='deposit'
and branch in ('kozhikode main','thrissur branch')
group by branch;

create table campaigns(campaigns_id int primary key,campaigns_name varchar(40),channel varchar(20),spend int,clicks int);
insert into campaigns(campaigns_id,campaigns_name,channel,spend,clicks)
values(1,'onam sale push','social media','45000','12000'),
(2,'new year blast','search','60000','9000'),
(3,'monsoon offers','email','8000','3000'),
(4,'college fest promo','social media','15000','5000'),
(5,'diwali mega sale','search','72000','14000');
select*from campaigns;

select campaigns_name, spend
from campaigns
order by spend desc
limit 3;

create table campaign(campaign_id int,campaign_name varchar(40),spend int);
insert into campaign(campaign_id,campaign_name,spend)
values(1,'onam sale push',45000),
(2,'new year blast',60000),
(3,'monsoon offers',60000),
(4,'diwali mega sale',72000);
select*from campaign;

select campaign_name,spend
from campaign
order by spend desc
limit 1 offset 1;

create table customerspend(customer_id int primary key, customer_name varchar(50),total_spend int,signup_year int);
insert into customerspend(customer_id,customer_name,total_spend,signup_year)
values(1,'aleena roy',25000,2022),
(2,'basil antony',40000,2021),
(3,'chinnu lal',40000,2020),
(4,'dinesh kumar',18000,2023),
(5,'elza varghese',32000,2019),
(6,'farhan sheikh',40000,2023);
select*from customerspend;

select customer_name, total_spend,signup_year
from customerspend
order by total_spend desc,
signup_year asc
limit 5;

create table leads(lead_id int primary key, email varchar(50),campaign_source varchar(30));
insert into leads(lead_id,email,campaign_source)
values(1,'anu.k@mail.com','facebook'),
(2,'biju.p@mail.com','google'),
(3,'anu.k@mail.com','instgram'),
(4,'cathy.j@mail.com','google'),
(5,'biju.p@mail.com','email');
select*from leads;

select email
from leads
group by email
having count(*) > 1;

create table camp(camp_id int primary key,camp_name varchar(40),impressions int,clicks int);
insert into camp(camp_id,camp_name,impressions,clicks)
values(1,'onam sales push',100000,8000),
(2,'new year blast',50000,6000),
(3,'monsoon offers',20000,500);
 
 select*from camp;
 
 select camp_name,round((clicks / impressions)*100,2) as ctr_percent from camp order by ctr_percent desc;
 
 create table campai(campai_id int primary key,channel varchar(20),spend int,conversions int);
 insert into campai(campai_id,channel,spend,conversions)
 values(1,'social media',45000,320),
 (2,'search',60000,410),
 (3,'social media',15000,90),
 (4,'search',72000,500),
 (5,'email',8000,60);
  
  select*from campai; 
  
  select channel,count(*)as total_campai,sum(spend)as total_spend,round(avg(conversions),2)as avg_conversions 
  from campai group by channel;
  
  create table patients(patient_id int primary key ,patient_name varchar(50),age int,department varchar(30));
  insert into patients(patient_id,patient_name,age,department)
  values(1,'ummer farook',62,'cardiology'),
  (2,'nimisha raj',34,'orthopedics'),
  (3,'sajan thomas',45,'general'),
  (4,'athira vinod',28,'pediatrics'),
  (5,'balachandran',70,'cardiology');
  select*from patients;
  
  select patient_name,age
  from patients where age>(select avg(age) from patients);
  
create table doctors(doctor_id int primary key,doctor_name varchar(50),department varchar(30),salary int);
insert into doctors(doctor_id,doctor_name,department,salary)
values(1,'dr.anitha kurup','cardiology',150000),
(2,'dr.bijoy alex','cardiology',175000),
(3,'dr.chithra menon','orthopedics',140000),
(4,'dr.deepak suresh','orthopedics',138000);

update doctors set department='cardiology'
where doctor_id=2;

select*from doctors;

select doctor_name,department,salary
from doctors d 
where salary=(select max(salary)
     from doctors
     where department=d.department);
     
create table depts(depts_id int primary key, depts_name varchar(30));
insert into depts(depts_id,depts_name)
values(1,'cardiology'),
(2,'orthopedics'),
(3,'pediatrics');
select*from depts;

create table patient(patient_id int primary key,dept_id int,condition_status varchar(20));
insert into patient(patient_id,dept_id,condition_status)
values(1,1,'stable'),
(2,1,'critical'),
(3,2,'stable'),
(4,3,'critical');
select*from patient;

select distinct d.depts_name 
from depts d
join patient p
on d.depts_id = p.dept_id
where p.condition_status ='critical';

create table departs(dept_id int primary key,dept_name varchar(30));
insert departs(dept_id,dept_name)
values(1,'cardiology'),
(2,'orthopedics'),
(3,'ent');
select*from departs;

create table patien(patient_id int primary key,dept_id int);
insert patien(patient_id,dept_id)
values(1,1),
(2,1),
(3,2);
select*from patien;

select d.dept_name,
   count(p.patient_id) as
 patient_count
from departs d 
left join patien p
on d.dept_id=p.dept_id
group by d.dept_id,d.dept_name;

create table inpatients(patient_id int,patient_name varchar(50));
insert into inpatients(patient_id,patient_name)
values(1,'rajitha kumari'),
(2,'salim ibrahim');
select*from inpatients;

create table outpatients(patient_id int ,patient_name varchar(50));
insert into outpatients(patient_id,patient_name)
values(3,'salim ibrahim'),
(4,'teena george');
select*from outpatients;

 select patient_name
 from inpatients
 union
 select patient_name
 from outpatients;
 
 create table pati(patient_id int,patient_name varchar(50),age int);
 insert into pati(patient_id,patient_name,age)
 values(1,'adithya menon',9),
 (2,'bindu chandran',42),
 (3,'cheriyan jose',67),
 (4,'divya prasad',25);
 select*from pati;
 
 select patient_name,
 case
   when age<18 then 'child'
   when age between 18 and 59
then 'adult'
     else 'senior'
end as age_group
from pati;

create table od(order_id int,customer_id int,od_date date);
insert into od(order_id,customer_id,od_date)
values(1,10,'2026-08-01'),
(2,11,'2026-08-20'),
(3,12,'2026-08-30'),
(4,13,'2026-09-02'),
(5,14,'2026-07-01');
select*from od;

select order_id,od_date as
 od_date
from od 
where od_date between '2026-08-20' and '2026-09-02';

create table users(user_id int,user_name varchar(50),email varchar(60));
insert into users(user_id,user_name,email)
values(1,'nithya balan','nithya.b@gmail.com'),
(2,'ouseph varghese','ouseph.v@axionz.edu'),
(3,'pooja ramesh','pooja.r@yahoon.com');
select*from users;

select user_name,
substring_index(email,'@',-1)
as domain 
from users;

create table e(e_id int,e_name varchar(50),depa varchar(30),sal int);
insert into e(e_id,e_name,depa,sal)
values(1,'aswathy prakesh','it',90000),
(2,'bibin jacob','it',78000),
(3,'carmel sunny','it',90000),
(4,'devan pillai','hr',55000),
(5,'esha rahman','hr',60000);
select*from e;

select e_name as emp_name,
depa as department,sal as salary,
dense_rank()over(
partition by depa
order by sal desc)
as salary_rank from e;

create table dailysal(sale_date date,revenue int);
insert into dailysal(sale_date,revenue)
values('2026-08-01',5000),
('2026-08-02',3000),
('2026-08-03',7000),
('2026-08-04',2000);
select*from dailysal;

select sale_date,revenue,
sum(revenue)over(order by sale_date)
as running_total 
from dailysal
order by sale_date;

create table monthlyrev(month_num int,month varchar(10),revenue int);
insert into monthlyrev(month_num,month,revenue)
values(1,'jan',50000),
(2,'feb',62000),
(3,'mar',58000),
(4,'apr',71000);
select*from monthlyrev;

select month as month,revenue,revenue-lag(revenue)over
(order by month_num)as revenue_change
from monthlyrev
order by month_num;

create table es(es_id int,es_name varchar(50),department varchar(30));
insert into es(es_id,es_name,department)
values(1,'anand babu','sales'),
(2,'bhagya lekshmi','sales'),
(3,'cyriac thomas','sales'),
(4,'delna roy','it'),
(5,'eldho paul','it'),
(6,'farsana beegum','support');
select*from es;

select department,
count(*)as headcount
from es 
where department='sales'
group by department;