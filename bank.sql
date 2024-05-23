
create table Bank_customer (
    acc_no int primary key,
    cust_name varchar(15),
    place varchar(20)
);


create table deposit (
    acc_no int references Bank_customer(acc_no),
    deposit_no int,
    deposit_amount int
);


create table loan (
    acc_no int references Bank_customer(acc_no),
    loan_no int,
    loan_amount int
);


insert into Bank_customer (acc_no, cust_name, place) values
(1001, 'Django', 'Germany'),
(1002, 'Eliot', 'USA'),
(1003, 'John whick', 'USA'),
(1004, 'Patrick', 'USA'),
(1005, 'Alice', 'Canada'),   
(1006, 'Bob', 'France'),    
(1007, 'Charlie', 'UK'),     
(1008, 'David', 'Australia'),
(1009, 'Eva', 'Germany '),    
(1010, 'Frank', 'USA'),      
(1011, 'Grace', 'Canada');  

insert into deposit (acc_no, deposit_no, deposit_amount) values
(1001, 1, 5000),
(1001, 2, 3000),
(1002, 3, 7000),
(1003, 4, 10000),
(1004, 5, 2000),
(1005, 6, 9000);



insert into loan (acc_no, loan_no, loan_amount) values
(1001, 1, 15000),
(1002, 2, 5000),
(1003, 3, 12000),
(1004, 4, 8000),
(1005, 5, 11000),  
(1008, 7, 13000);  


select * from cusomters;

select Bank_customer.acc_no ,Bank_customer.cust_name,deposit.deposit_amount from Bank_customer join deposit on Bank_customer.acc_no=deposit.acc_no;

select Bank_customer.acc_no ,Bank_customer.cust_name,loan.loan_amount from Bank_customer join loan on Bank_customer.acc_no=loan.acc_no;

select Bank_customer.acc_no,Bank_customer.cust_name from Bank_customer 
where Exists(select deposit.acc_no from deposit where Bank_customer.acc_no=deposit.acc_no) and Exists(select loan.acc_no from loan where Bank_customer.acc_no=loan.acc_no);


select Bank_customer.acc_no,Bank_customer.cust_name from Bank_customer 
where not Exists(select deposit.acc_no from deposit where Bank_customer.acc_no=deposit.acc_no) and not Exists(select loan.acc_no from loan where Bank_customer.acc_no=loan.acc_no);

