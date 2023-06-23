create database Ass4
use Ass4 
create table staff(
s_id char(6) primary key not null,
s_name nvarchar(30) not null
);

create table Pro_type(
t_id char(4) not null primary key,
t_name nvarchar(30) not null
);
create table products(
p_id char(10) not null primary key,
t_id char(4) not null,
s_id char(6) not null,
p_date date not null
foreign key (s_id) references staff(s_id),
foreign key (t_id) references Pro_type(t_id)
);
alter
insert into staff values(987688,'Nguyễn Văn An'),(987689,'Nguyễn dat');

insert into Pro_type values('Z37E','Máy tính sách tay Z37'),('Z38E','Máy tính sách tay Z38');

insert into products values('Z37 111111','Z37E',987688,'12/13/09'),('Z38 111111','Z38E',987689,'12/13/09');

--cau 4
select *from Pro_type
select *from products
select *from staff

--cau 5
select *from Pro_type order by t_name asc
select *from staff order by s_name asc
select p.p_id from products p join Pro_type t on p.t_id=t.t_id where t.t_name='Z37E'
select p.p_id from products p join staff s on s.s_id=p.s_id order by p_id desc

--cau 6
select t_id,count(p_id) from products group by t_id 
select t_id, count(p_id)/count(t_id) from products group by t_id
select * from Pro_type t full join products p on t.t_id=p.t_id order by t.t_id asc
select * from products p full join staff s on s.s_id=p.s_id order by p_id desc
-- cau 7
alter table products
add p_ver char(6) 

--cau 8
create index staff_index on staff(s_id)