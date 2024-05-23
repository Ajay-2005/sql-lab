create table salesman(salesman_no int primary key,salesman_name varchar(15) not null,place varchar(20),phone int unique);

create table sales_order(order_no int primary key,order_date date,salesman_no references salesman(salesman_no),)