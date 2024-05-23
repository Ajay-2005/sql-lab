create table hospital (doctor_id varchar(5) primary key,doctor_name varchar(15),department varchar(20),qualification varchar(6),experience int);

insert into hospital values
('D001', 'John Smith', 'Cardiology', 'MD', 10),
('D002', 'Alice Brown', 'Neurology', 'PhD', 8),
('D003', 'Robert White', 'Orthopedics', 'MD', 12),
('D004', 'Emily Clark', 'Skin', 'MD', 5),
('D005', 'Michael Lee', 'Oncology', 'MS', 7);


select * from hospital where qualification='MD';

select doctor_name where department='Skin';

update hospital set experience='5' where doctor_id='D003';

delete from hospital where doctor_id='D005';

select * from hospital;



