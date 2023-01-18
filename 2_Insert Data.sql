/**************************************************************
   2022F-T2 BDM 1034-Application Design for Big Data
   Midterm Exam Project: STUDENT DATA MANAGEMENT 
   Create by Group F: 
	Diana Marcela Lizararo Caicedo (c0855963)
	Kavit Rakeshkumar Soni (c0856931)
	Hakan Tekin (c0852682)
	Pratyush Singh (c0857725)
	Vengie Dinampo (c0849806) 
**************************************************************/ 
             ------ INSERT SCRIPT ---------


USE LMT_University;
GO

/****************************************************************************** 
5C.	Insert the following records based on the following specifications.
	i.	AddressID: Address ID starting from 1 to 30 with step size 1.
	ii.	StreetAddress: Insert the street Address mentioned in the table.
	iii.	City: Insert the City mentioned in the table.
	iv.	State: Insert the State mentioned in the table.
	v.	PostalCode: Insert the PostalCode mentioned in the table.
	vi.	Country: Insert the Country mentioned in the table.
	vii.	InsertedOn: Insert as default date as system date

********************************************************************************/
/** insert into enrol.Address **/
INSERT INTO enrol.Address VALUES('5 Schurz Lane','Grybów',NULL,'33-330','Poland', DEFAULT)
INSERT INTO enrol.Address VALUES('628 Waubesa Drive','Jinsheng',NULL,NULL,'China', DEFAULT)
INSERT INTO enrol.Address VALUES('44135 Northfield Way','Nowy Dwór Mazowiecki',NULL,'05-160','Poland', DEFAULT)
INSERT INTO enrol.Address VALUES('335 Bellgrove Road','Gaoqiao',NULL,NULL,'China', DEFAULT)
INSERT INTO enrol.Address VALUES('28 Victoria Junction','Bukovec',NULL,'739 84','Czech Republic', DEFAULT)
INSERT INTO enrol.Address VALUES('6 Stuart Road','Wushan',NULL,NULL,'China', DEFAULT)
INSERT INTO enrol.Address VALUES('730 Barby Street','Zhengchang',NULL,NULL,'China', DEFAULT)
INSERT INTO enrol.Address VALUES('22742 Schiller Street','Sumurwaru',NULL,NULL,'Indonesia', DEFAULT)
INSERT INTO enrol.Address VALUES('31 Elka Junction','Cigembong',NULL,NULL,'Indonesia', DEFAULT)
INSERT INTO enrol.Address VALUES('5 Kenwood Circle','Davao',NULL,'8000','Philippines', DEFAULT)
INSERT INTO enrol.Address VALUES('99 Bunker Hill Crossing','Zarasai',NULL,'32001','Lithuania', DEFAULT)
INSERT INTO enrol.Address VALUES('5 Farragut Center','Jaromerice',NULL,'569 44','Czech Republic', DEFAULT)
INSERT INTO enrol.Address VALUES('25 Lerdahl Street','Nanshi',NULL,NULL,'China', DEFAULT)
INSERT INTO enrol.Address VALUES('918 Bonner Way','Phayakkhaphum Phisai',NULL,'44110','Thailand', DEFAULT)
INSERT INTO enrol.Address VALUES('9 West Alley','Sempu',NULL,NULL,'Indonesia', DEFAULT)
INSERT INTO enrol.Address VALUES('234 Hagan Lane','Rennes','Bretagne','35033','France', DEFAULT)
INSERT INTO enrol.Address VALUES('33942 Eagle Crest Trail','Oliveiras','Porto','4745-235','Portugal', DEFAULT)
INSERT INTO enrol.Address VALUES('20791 Hermina Way','B?o L?c',NULL,NULL,'Vietnam', DEFAULT)
INSERT INTO enrol.Address VALUES('86 Lake View Way','Marsa Alam',NULL,NULL,'Egypt', DEFAULT)
INSERT INTO enrol.Address VALUES('19732 Burning Wood Parkway','Piteå','Norrbotten','944 73','Sweden', DEFAULT)
INSERT INTO enrol.Address VALUES('9320 Oak Valley Road','Rathangani',NULL,'A45','Ireland', DEFAULT)
INSERT INTO enrol.Address VALUES('2638 Waubesa Circle','Honda',NULL,'732048','Colombia', DEFAULT)
INSERT INTO enrol.Address VALUES('6999 Monument Center','Cortes',NULL,'6341','Philippines', DEFAULT)
INSERT INTO enrol.Address VALUES('1 Warbler Hill','Proletar',NULL,NULL,'Tajikistan', DEFAULT)
INSERT INTO enrol.Address VALUES('1311 Crowley Street','Baghlan',NULL,NULL,'Afghanistan', DEFAULT)
INSERT INTO enrol.Address VALUES('19 Walton Way','Öldziyt',NULL,NULL,'Mongolia', DEFAULT)
INSERT INTO enrol.Address VALUES('1 Glacier Hill','Cergy-Pontoise','Île-de-France','95304','France', DEFAULT)
INSERT INTO enrol.Address VALUES('5094 Gateway Way','Živinice',NULL,NULL,'Bosnia and Herzegovina', DEFAULT)
INSERT INTO enrol.Address VALUES('2 Roth Pass','Tuatuka',NULL,NULL,'Indonesia', DEFAULT)
INSERT INTO enrol.Address VALUES('89531 Northview Road','Ganyi',NULL,NULL,'China', DEFAULT)
GO

/****************************************************************************** 
6C.	Insert the following records based on the following specifications.
	i.	DepartmentID: Department ID starting from 1 to 30 with step size 1.
	ii.	DepartmentName: Insert the Department Name mentioned in the table.
	iii. DepartmentDescription: Insert the Department Description mentioned in the table.
	iv.	DepartmentCapacity: Insert the Department Capacity mentioned in the table.
	v.	InsertedOn: Insert as default date as system date.
********************************************************************************/
/** insert into enrol.Department **/
INSERT INTO enrol.Department VALUES('IT','Information Technology','60', DEFAULT)
INSERT INTO enrol.Department VALUES('EE','Electrical Engineering','120', DEFAULT)
INSERT INTO enrol.Department VALUES('CSE','Computer Science Engineering','140', DEFAULT)
INSERT INTO enrol.Department VALUES('ME','Mechanical Engineering','110', DEFAULT)
INSERT INTO enrol.Department VALUES('ECE','Electronic and Communication Engineering','80', DEFAULT)
INSERT INTO enrol.Department VALUES('AEIE','Applied Electronics and Instrumentation Engineering','50', DEFAULT)
GO


/****************************************************************************** 
7C.	Insert the following records based on the following specifications.
i.	LecturerID: Lecturer ID starting from 1 to 30 with step size 1.
ii.	LecturerName: Insert the Lecturer Name mentioned in the table.
iii.LecturerHighestQualification: Insert the Lecturer Highest Qualification mentioned in the table.
iv.	LecturerAge: Insert the Lecturer Age mentioned in the table. 
v.	DepartmentID: Foreign key, Not Null.
vi.	InsertedOn: Insert as default date as system date.
********************************************************************************/
/** insert  into enrol.Lecturer **/
INSERT INTO enrol.Lecturer VALUES('Peder Bernaldez','M.Tech','2010-10-10','6',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Emile Adolthine','PhD','2010-04-04','5',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Titos Iorizzi','M.Tech','2012-04-09','4',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Ferris Falck','MSC','2011-05-05','3',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Georgie McIlwraith','M.Tech','2017-05-08','2',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Karlen Kearn','MSC','2019-03-03','1',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Axe Whistlecroft','MCA','2019-03-03','6',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Drucie Bazek','PhD','2019-04-01','5',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Antony Gamlin','M.Tech','2019-04-01','4',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Alexina Moncaster','MBA','2019-04-01','3',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Milzie Kabos','MCA','2019-03-03','2',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Arlene Glendza','MS','2019-03-03','1',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Kirby Kabisch','M.Tech','2019-04-01','1',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Selma Eliyahu','PhD','2019-04-01','2',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Ilysa Chooter','M.Tech','2019-04-01','3',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Rozalie Pennycord','MSC','2010-10-10','4',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Dacey Glidder','M.Tech','2010-04-04','5',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Claretta Diaper','MSC','2012-04-09','6',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Kalil Pendleton','MCA','2011-05-05','6',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Trudey Brech','PhD','2011-10-05','5',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Gypsy Ambrosini','M.Tech','2011-03-30','4',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Lauree Ribbon','MBA','2013-04-04','3',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Hugo Valois','MCA','2012-04-29','2',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Perren Chetter','MS','2018-05-03','1',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Fawn Coffelt','M.Tech','2020-02-26','1',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Terrie Golby','PhD','2020-02-26','2',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Jeanette Ciraldo','M.Tech','2020-03-26','3',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Elfrieda Elijahu','MSC','2020-03-26','4',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Guthry Blaes','M.Tech','2020-03-26','5',DEFAULT)
INSERT INTO enrol.Lecturer VALUES('Richy Saice','MSC','2020-02-26','6',DEFAULT)
GO


/****************************************************************************** 
8C.	Insert the following records based on the following specifications.
	i.	StudentID: Student ID starting from 1 to 50 with step size 1.
	ii.	StudentFirstName: Insert the Student First Name mentioned in the table.
	iii.	StudentLastName: Insert the Student Last Name mentioned in the table.
	iv.	StudentDOB: Insert the Student DOB mentioned in the table.
	v.	StudentMobile: Insert the Student Mobile no mentioned in the table.
	vi.	StudentRollNo: Insert the Student Roll no mentioned in the table.
	vii.	DepartmentID: Insert the Department ID mentioned in the table.
	viii.	AddressID: Insert the Address ID mentioned in the table.
	ix.	InsertedOn: Insert as default date as system date.
********************************************************************************/
/** insert data into enrol.Student **/
INSERT INTO enrol.Student VALUES('Joey','Ironside','1995-11-22','1276234258','1','3','1',DEFAULT)
INSERT INTO enrol.Student VALUES('Karlotta','Garraway','1997-07-06','2192431615','2','3','24',DEFAULT)
INSERT INTO enrol.Student VALUES('Jerry','Stutte','1996-12-18','4125425783','3','1','17',DEFAULT)
INSERT INTO enrol.Student VALUES('Yehudit','Rahill','1995-01-15','9939485406','4','2','29',DEFAULT)
INSERT INTO enrol.Student VALUES('Cele','Crosetto','1998-11-24','3622733725','5','3','16',DEFAULT)
INSERT INTO enrol.Student VALUES('Hazlett','Mowsdale','1995-04-09','1482883476','6','4','23',DEFAULT)
INSERT INTO enrol.Student VALUES('Carlyn','Marks','1996-12-27','6129154080','7','5','20',DEFAULT)
INSERT INTO enrol.Student VALUES('Ellis','Boatman','1997-04-29','8269707118','8','6','7',DEFAULT)
INSERT INTO enrol.Student VALUES('Florina','Boyack','1997-08-03','9623352863','9','3','14',DEFAULT)
INSERT INTO enrol.Student VALUES('Borg','Innett','1997-09-03','5256034960','10','1','19',DEFAULT)
INSERT INTO enrol.Student VALUES('Sayres','Jennings','1996-05-12','8675076454','11','4','27',DEFAULT)
INSERT INTO enrol.Student VALUES('Jarid','Sprull','1998-11-02','1391270091','12','2','6',DEFAULT)
INSERT INTO enrol.Student VALUES('Elvera','Bannard','1996-09-07','7897232539','13','4','24',DEFAULT)
INSERT INTO enrol.Student VALUES('Ody','Inggall','1995-03-05','6094734260','14','5','25',DEFAULT)
INSERT INTO enrol.Student VALUES('Curcio','McWhan','1996-07-29','2394865847','15','6','11',DEFAULT)
INSERT INTO enrol.Student VALUES('Connie','Sinnie','1995-07-19','1473936221','16','6','23',DEFAULT)
INSERT INTO enrol.Student VALUES('Auroora','Nel','1996-09-05','2216400391','17','3','14',DEFAULT)
INSERT INTO enrol.Student VALUES('Wendall','Rosendale','1999-12-30','1818120249','18','3','28',DEFAULT)
INSERT INTO enrol.Student VALUES('Hadley','Bradbury','1996-08-16','6518067697','19','1','10',DEFAULT)
INSERT INTO enrol.Student VALUES('Celine','Smales','1999-07-11','7106508130','20','2','10',DEFAULT)
INSERT INTO enrol.Student VALUES('Jesselyn','Stevenson','1998-05-16','9231672206','21','2','22',DEFAULT)
INSERT INTO enrol.Student VALUES('Corinna','Pinkney','1998-01-16','8323630067','22','5','29',DEFAULT)
INSERT INTO enrol.Student VALUES('Orelle','Adamthwaite','1997-07-26','2539126766','23','3','17',DEFAULT)
INSERT INTO enrol.Student VALUES('Howie','Seaman','1997-12-01','9888259627','24','2','4',DEFAULT)
INSERT INTO enrol.Student VALUES('Sibyl','Corey','1996-07-18','4493239590','25','5','11',DEFAULT)
INSERT INTO enrol.Student VALUES('Ruperta','Peaker','1999-05-22','5124781263','26','5','4',DEFAULT)
INSERT INTO enrol.Student VALUES('Delmer','Roughey','1995-04-21','4175314364','27','3','22',DEFAULT)
INSERT INTO enrol.Student VALUES('Gifford','O''Scannill','1996-10-31','3134783726','28','4','22',DEFAULT)
INSERT INTO enrol.Student VALUES('Hedy','O''Hone','1998-03-29','7316228047','29','2','17',DEFAULT)
INSERT INTO enrol.Student VALUES('Shalna','Hyde-Chambers','1999-11-23','7455116160','30','5','6',DEFAULT)
INSERT INTO enrol.Student VALUES('Ferdie','Di Napoli','1995-01-17','1905908693','31','4','30',DEFAULT)
INSERT INTO enrol.Student VALUES('Piper','Giacomuzzo','1998-09-14','5499340503','32','6','4',DEFAULT)
INSERT INTO enrol.Student VALUES('Gerhardt','Schruurs','1999-11-18','8197494894','33','3','1',DEFAULT)
INSERT INTO enrol.Student VALUES('Mellicent','Buncher','1996-10-03','4584525312','34','5','28',DEFAULT)
INSERT INTO enrol.Student VALUES('Corette','Demead','1997-09-17','4909862137','35','5','17',DEFAULT)
INSERT INTO enrol.Student VALUES('Jorgan','Barson','1997-05-01','6022309183','36','1','21',DEFAULT)
INSERT INTO enrol.Student VALUES('Koral','Bowen','1998-05-12','4198817454','37','4','3',DEFAULT)
INSERT INTO enrol.Student VALUES('Allissa','Kitter','1998-08-17','7328676920','38','5','7',DEFAULT)
INSERT INTO enrol.Student VALUES('Townsend','Doughtery','1998-04-13','2639777958','39','4','7',DEFAULT)
INSERT INTO enrol.Student VALUES('Yolane','Geratt','1998-06-10','2069585951','40','6','17',DEFAULT)
INSERT INTO enrol.Student VALUES('Chrystel','Allwood','1996-09-07','6958461692','41','3','25',DEFAULT)
INSERT INTO enrol.Student VALUES('Dyana','Clutterbuck','1997-09-22','5842483886','42','1','1',DEFAULT)
INSERT INTO enrol.Student VALUES('Nikki','Edy','1999-01-10','5096155315','43','6','25',DEFAULT)
INSERT INTO enrol.Student VALUES('Hendrik','Surr','1997-04-05','2021255732','44','5','11',DEFAULT)
INSERT INTO enrol.Student VALUES('Marta','Bosch','1998-09-28','4075136713','45','6','5',DEFAULT)
INSERT INTO enrol.Student VALUES('Garrik','Pell','1999-04-14','3071057649','46','6','7',DEFAULT)
INSERT INTO enrol.Student VALUES('Stormi','Colbron','1998-10-21','9968113654','47','3','28',DEFAULT)
INSERT INTO enrol.Student VALUES('Angelique','Iacivelli','1995-06-07','9518365081','48','5','7',DEFAULT)
INSERT INTO enrol.Student VALUES('Zack','Hefforde','1999-07-25','5455693035','49','1','29',DEFAULT)
INSERT INTO enrol.Student VALUES('Gusella','Pettiford','1999-08-23','2425172721','50','4','3',DEFAULT)
GO


