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

