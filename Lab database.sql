create table Patient
	(PT_ID int, PT_Fname varchar(50), PT_Lname varchar(50), DOB date, Gender varchar, PT_Phone varchar(10), PT_address varchar(50), PT_city varchar(50));
insert into Patient values
	('1', 'Pam', 'Beasley', '10/23/1980', 'F', '1112223333', '123 S Street', 'Woodstock');
insert into Patient values
	('2', 'Jim', 'Halpert', '12/7/1982', 'M', '2223334444', '675 N road', 'Roswell');
insert into Patient values
	('3', 'Susan', 'Smith', '4/12/1991', 'F', '3334445555', '876 street road', 'Woodstock');
insert into Patient values
	('4', 'John', 'Smith', '8/6/1972', 'M', '4445556666', '817 west street', 'Atlanta');
insert into Patient values
	('5', 'Rick', 'Ross', '9/9/2015', 'M', '5556667777', '153 Prett st', 'Atlanta');

create table Employee
	(Emp_ID int, Emp_Fname varchar(50), Emp_Lname varchar(50), DepartmentID int, Emp_phone varchar(10));
insert into Employee values
	('1', 'Jim', 'Johnson', '2', '1119992222');
insert into Employee values
	('2', 'Deborah', 'Anderson', '5', '2229883333');
insert into Employee values
	('3', 'Aubree', 'Hampton', '1', '2225553333');
insert into Employee values
	('4', 'Dan', 'Sterling', '3', '7774443333');
insert into Employee values
	('5', 'Angela','Sampson', '4', '5552229999');

create table Department
	(DepartmentID int, Department_name varchar(50), Dep_phone varchar(10));
insert into Department values
	('1', 'Pediatrics', '9998887777');
insert into Department values
	('2', 'internal medicine', '8887776666');
insert into Department values
	('3', 'dermatology', '7776665555');
insert into Department values
	('4', 'oncology', '5554443333');
insert into Department values
	('5', 'accounting', '4443332222');

create table Employee_role
	(employee_ID int, Role varchar(50));
insert into Employee_role values
	('1', 'Doctor');
insert into Employee_role values
	('2','Accountant');
insert into Employee_role values
	('3', 'Nurse');
insert into Employee_role values
	('4', 'Doctor');
insert into Employee_role values
	('5', 'Doctor');

create table Treatment
	(Treatment_ID int, Treatment_name varchar(50), Illness varchar(50));
insert into Treatment values
	('1', 'Chemotherepy', 'Breast Cancer');
insert into Treatment values
	('2','Laser Treatment','Acne');
insert into Treatment values
	('3','Colonoscopy','');
insert into Treatment values
	('4', 'tonsilectomy','strep throat');
insert into Treatment values
	('5','measles vaccination','');

create table drug_treatment
	(Treatment_ID int, Drug_name varchar(50));
insert into drug_treatment values
	('1','Doxorubicin');
insert into drug_treatment values
	('1', 'Paclitaxel');
insert into drug_treatment values
	('2', 'dapsone');
insert into drug_treatment values
	('4', 'Hydrocodone');
insert into drug_treatment values
	('3', 'fentanyl');

create table In_patient_treatment
	(In_patientID int, Treatment_ID int, Bed_number int, addmittance_date date, discharge_date date);
insert into In_patient_treatment values
	('1','1', '1', '11/11/2019', '11/16/2019');
insert into In_patient_treatment values
	('2', '1', '2','2/3/2020', '2/15/2020');
insert into In_patient_treatment values
	('3','2','56','7/12/2018', '7/12/2018');
insert into In_patient_treatment values
	('4','4','112', '3/12/2016', '4/1/2016');
insert into In_patient_treatment values
	('5','3','32', '8/14/2013', '8/15/2013');

create table Bed
	(Bed_number int, room_number int, floors int, wing varchar(50));
insert into Bed values
	('1','101','1','South');
insert into Bed values
	('2','101','1','South');
insert into Bed values
	('56', '212','2','North');
insert into Bed values
	('112', '300','3', 'West');
insert into Bed values
	('32', '115','1', 'East');

create table Test
	(Test_ID int, test_name varchar(50), test_result varchar(50));
insert into Test values
	('1','Thyroid Panel', '2.4');
insert into Test values
	('2','Strep throat culture', 'positive');
insert into Test values
	('3', 'blood sugar', '125 mg/dl');
insert into Test values
	('4', 'liver panel', 'low');
insert into Test values
	('5', 'kidney unrinalysis', 'positive');


create table Medical_Record
	(medrec_entryid int, PT_ID int, Emp_ID int, Treatment_ID int, Test_ID int, In_patientID int);
insert into Medical_Record values
	('1','5','3','5','','');
insert into Medical_Record values
	('2','1','5','1','','2');
insert into Medical_Record values
	('3','2','1','3','','3');
insert into Medical_Record values
	('4','3','4','2','','');
insert into Medical_Record values		
	('5','4','1','','1','');
