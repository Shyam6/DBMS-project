create database AmbulanceService;
create table PatientInfo(
id int not null,
Name varchar(10) NOT NULL,
Gender char(1) NOT NULL,
Mobileno varchar(13) NOT NULL,
Area varchar(50) NOT NULL,
Pincode int NOT NULL,
Vaccinated char(1) NOT NULL,
PRIMARY KEY(id)
);
create table AmbulanceInfo(
Amb_Number varchar(15) not null,
Amb_Type   char(3) not null,
Amb_Price      int not null,
primary key(Amb_Number)
);
create table DriverInfo(
driver_id int not null,
Driver_Name  varchar(20) not null,
DriverPh_Number char(10) not null,
Amb_Number varchar(15),
primary key(driver_id),
foreign key(Amb_Number) references AmbulanceInfo(Amb_Number)
);
create table hospital_info(
id int not null primary key,
name varchar(45) not null,
area varchar(50) not null
);
create table payment_info(
id int not null,
payment_method varchar(10) not null,
primary key(id)
);
create table book_amb(
patient_id int  not null,
hosp_id int not null,
amb_type varchar(15) not null,
totalfare_withdistancefare int  not null, 
payment_id int not null,
foreign key(patient_id) references patientinfo(id),
foreign key(hosp_id) references hospital_info(id),
foreign key(payment_id) references payment_info(id)
);
create table amb_allocated(
p_id int not null,
d_id int not null,
foreign key(p_id) references patientinfo(id),
foreign key(d_id) references DriverInfo(driver_id)
);
create table Donar_info(
id int  NOT NULL,
BloodGroup varchar(10) NOT NULL,
No_of_Units int NOT NULL,
foreign key(id) references patientinfo(id)
);
create table Request_Blood(
id int not null,
BloodGroup varchar(5) not null,
No_of_Units_Required int not null,
Hospital_id int not null,
foreign key(id) references patientinfo(id)
);
insert into patientinfo values
(1,'Vijaya','F','9354678910','Madhapur',500018,'y'),
(2,'Christi','F','9546789132','Banjarahills',500033,'n'),
(3,'Vembuli','M','9354678979','Jubleehills',500008,'y'),
(4,'Siddapa','M','8354678911','Paradisecolony',500003,'y'),
(5,'Arya','M','7354678911','Madhunagar',500028,'y'),
(6,'Hannah','F','8354658911','Moosapet',500008,'n'),
(7,'Varsha','F','9354678911','Amerpet',500031,'y'),
(8,'Priya','F','9354678931','Krishnanagar',500042,'y'),
(9,'Riya','F','9354653912','Kphb',500077,'n'),
(10,'Satya','M','7546700929','Miapur',500021,'n'),
(11,'Baker','F','9354653913','Kphb',500077,'n'),
(12,'Rishab','M','7546700939','Miapur',500021,'n'),
(13,'Hannah','F','8364648911','Moosapet',500008,'n'),
(14,'Prakash','M','9354678979','Jubleehills',500008,'y'),
(15,'Anushka','F','8354653311','Bharatnagar',500031,'n'),
(16,'Virat','M','9126126126','Jubleehills',500033,'y'),
(17,'Chintu','M','9026126126','Jubleehills',500033,'y'),
(18,'Varun','M','9126123456','Miapur',500021,'y'),
(19,'Rohit','M','9126123456','Shadnagar',534721,'y'),
(20,'Rishab','M','9026126125','Jubleehills',500033,'y'),
(21,'Monitha','F','9354678731','Krishnanagar',500042,'y'),
(22,'Satwik','F','9354653812','Kphb',500077,'n'),
(23,'Prithvi','M','8126345723','Bharatnagar','509216','n'),
(24,'Satwika','F','7136885723','Bharatnagar','509216','n'),
(25,'Satwik','M','9027126126','Jubleehills',500033,'n'),
(26,'Christi','F','9754678731','Krishnanagar',500042,'y'),
(27,'Akash','M','9354678230','Bharatnagar',509216,'y'),
(28,'Monith','F','9354678731','Krishnanagar',509236,'y'),
(29,'Vamshi','M','9347963379','Secunderabad',509716,'y'),
(30,'Harsha','M','9148213702','Paradisecolony','500003','y');

insert into AmbulanceInfo values
('TS02G3798','BLS',2000),
('TS07U1163','BLS',2000),
('TS06T2768','BLS',2000),
('TS02F4321','PTS',1250),
('TS01G0012','ALS',3000),
('TS04U0864','ALS',3000),
('TS05B7395','BLS',2000),
('TS03C4800','PTS',1250),
('TS08A3121','PTS',1250),
('TS02D3698','ALS',3000),
('TS01Q4031','ALS',3000),
('TS06G7963','ALS',3000),
('TS08K5151','BLS',2000),
('TS05M6348','PTS',1250),
('TS03N9912','ALS',3000),
('TS04L3942','ALS',3000),
('TS07I1531','BLS',2000),
('TS12U2873','PTS',1250),
('TS32G3152','BLS',2000),
('TS15I6842','ALS',3000),
('TS35C9240','BLS',2000),
('TS13B3897','ALS',3000),
('TS25A1011','BLS',2000),
('TS17D3222','PTS',1250),
('TS18F4398','ALS',3000),
('TS23P3212','PTS',1250),
('TS21X1565','BLS',2000),
('TS20V1453','ALS',3000),
('TS19C2971','ALS',3000),
('TS25A3025','PTS',1250);

insert into DriverInfo values
(192101,'Anjineyulu','9849327681','TS02G3798'),
(192102,'Ratnam','7636934461','TS07U1163'),
(192103,'Ram Mohan','7543978321','TS06T2768'),
(192104,'Balaji','9697148321','TS02F4321'),
(192105,'Seenu','8349755532','TS01G0012'),
(192106,'Joseph','8468312499','TS04U0864'),
(192107,'Mohammad','8372255534','TS05B7395'),
(192108,'Raju','8593114444','TS03C4800'),
(192109,'Venkatesh','7587324333','TS08A3121'),
(192110,'Vijay','9439751342','TS02D3698'),
(192111,'Karthikeya','9442551113','TS01Q4031'),
(192112,'Suraj','9937148541','TS06G7963'),
(192153,'Ramu','7934659871','TS08K5151'),
(192175,'Praveen','7008121300','TS05M6348'),
(192180,'John','7010489810','TS03N9912'),
(192201,'Akbar','9840094481','TS04L3942'),
(192202,'Abdul','9841021241','TS07I1531'),
(192301,'Eeshwar','9884884013','TS12U2873'),
(193108,'Tarun','8448837621','TS32G3152'),
(192129,'Chaitanya','7229946680','TS15I6842'),
(199200,'Chandrasekhar','7474960123','TS35C9240'),
(198199,'Kiran','9883756461','TS13B3897'),
(200200,'Ravi','7464198419','TS25A1011'),
(192178,'Bharath','9840089110','TS17D3222'),
(202325,'Sanjeev','8457793444','TS18F4398'),
(192253,'Rajesh','8553712424','TS23P3212'),
(193275,'Suman','9191852341','TS21X1565'),
(192256,'Prakash','9992348671','TS20V1453'),
(192763,'Umesh','7643377891','TS19C2971'),
(197565,'Santosh','8393674121','TS25A3025');

insert into hospital_info values
(101,'Apollo','Madhapur'),
(102,'ABC','Bharatnagar'),
(103,'SevenC','Paradisecolony'),
(104,'Bigb','Banjarahills'),
(105,'ShineC','Jubleehills'),
(106,'Xyz','Krishnanagar'),
(107,'Apollo','Kphb'),
(108,'Rainbow','Moosapet'),
(109,'Rainbow','Amerpet'),
(110,'Apollo','Madhunagar'),
(111,'Rainbow','Secunderabad'),
(112,'Opollo','Jubleehills'),
(113,'Rainbow','Miapur'),
(114,'Apollo','Miapur'),
(115,'Bigb','Miapur');

insert into payment_info values
(1001,'CASH'),
(1002,'CARD'),
(1003,'UPI');

insert into book_amb values
(1,110,'ALS',3800,1001),
(3,110,'BLS',2675,1001),
(6,103,'BLS',2350,1001),
(8,108,'ALS',3100,1003),
(11,110,'BLS',2400,1002),
(17,102,'BLS',2800,1001),
(19,106,'PTS',1750,1002),
(22,108,'PTS',1450,1002),
(24,103,'PTS',1600,1003),
(27,101,'ALS',4000,1002),
(30,113,'BLS',3100,1002);

insert into Donar_info values
(2,'A+',3),
(4,'O+',2),
(5,'AB-',4),
(7,'B+',2),
(10,'B-',2),
(12,'AB+',1),
(13,'0+',1),
(15,'AB+',3),
(18,'A-',2),
(20,'B+',5),
(26,'AB-',2),
(29,'O+',3);

insert into Request_Blood values
(1,'A+',2,110),
(9,'O-',2,102),
(14,'B-',1,101),
(16,'B-',3,104),
(17,'A+',2,102),
(21,'A-',2,107),
(24,'AB-',3,103),
(28,'B-',1,115),
(30,'B+',4,113);

insert into amb_allocated values
(1,'TS01Q4031',192101),
(3,'TS35C9240',192153),
(6,'TS07I1531',192175),
(8,'TS03N9912',192180),
(11,'TS02G3798',200200),
(17,'TS07U1163',198199),
(19,'TS02F4321',192183),
(22,'TS03C4800',192253),
(24,'TS08A3121',199198),
(27,'TS19C2971',192103),
(30,'TS21X1565',192109);
select *from amb_allocated;