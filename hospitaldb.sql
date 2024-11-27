create database hospitaldb1;
use hospitaldb1;
create table patients( id INT Primary Key Auto_Increment,name VARCHAR(50)Not Null,age INT Not Null,gender VARCHAR(10),contact int(50));
select * from patients;
insert into patients (name, age, gender, contact) values ('Arjun', 35, 'Male', 1234567890), ('Priya', 28, 'Female', 2345678901), ('Ravi', 45, 'Male', 3456789012);
select * from patients;


  create table doctors(id INT Primary Key Auto_Increment,name VARCHAR(50)Not Null,specialization VARCHAR(50) Not Null);
select * from doctors;
insert into doctors (name, specialization) values 
('Rajesh ', 'Cardiology'), 
(' Anjali', 'Neurology'), 
('Vikram ', 'heart surgen');
select * from doctors;

create table appointment(id INT Primary Key Auto_Increment,
 patient_id  INT ,Foreign Key References Patients(id)doctor_id,
 INT Foreign Key References Doctors(id),appointment_date DATE Not Null,status ENUM('Scheduled', 'Completed', 'Cancelled');

