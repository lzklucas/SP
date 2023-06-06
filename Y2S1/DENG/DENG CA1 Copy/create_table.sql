use [GroceryStore2222770];

-- Create a new Database
-- create database [GroceryStore2222770]

-- Create and Populate Tables

-- create store table
create table store(
	Store_ID		Int				Not Null, 
	Store_Address	VarChar(100)	Not Null,
	Manager_ID		Int				Not Null,
	primary key(Store_ID)
);

-- populate store table
insert into store 
values 
(854, '22556 Elm St', 14),
(247, 'abc', 10),
(159, '13636 Fir St', 14),
(778, '341 Main St', 15),
(989, 'abc1', 15),
(354, '820 Birch Rd', 15),
(696, '710 Edison Dr', 4),
(369, '940 Green St', 6),
(674, '14496 Maple Way', 6),
(348, 'abc123', 10);

-- create employee table
create table employee(
	Emp_ID			Int				Not Null,
	EmpName			Varchar(100)	Not Null,
	SSN				Int				Not Null,
	Phone			BigInt			Not Null,
	StoreRef_ID		Int				Not Null,
	Emp_Address		VarChar(50)		Not Null,
	PayType			Int				Not Null,
	Emp_password	VarChar(100)	Null,
	Manager			Int				Null,
	Email			VarChar(100)	Null,
	Date_hired		Date			Null,
	Date_Start		Date			Not Null,
	Date_end		Date			Null,
	pay				Decimal(7,2)	Not Null,
	primary key (Emp_ID)
);

-- populate employee table
insert into employee
values
(1,	'Darrel Philbin', 654269856, 5489659874, 854, '258 Cumberland dr', 0, '1234', 14, 'baldman@gmail.com', NULL, '1985-04-05', '2011-02-02', 20.00),
(10, 'Jerry Garcia', 758965897, 6521458569, 247, '214 Q st', 1, '1234', 9, 'govperson@gov.gov', NULL, '1990-09-24', NULL, 52000.00),
(11, 'Lawarnce Tom', 625458569, 9658745632, 159, '2154 Beech st', 0, NULL, 14, NULL, NULL, '1969-01-20', '2011-09-01', 15.00),
(12, 'Dexter Robert', 254125478, 1111111111, 778, '365 Moon dr', 0, NULL, 15, NULL, NULL, '1990-05-06', NULL, 12.25),
(13, 'Mark Nick', 563258965, 2225478512, 989, '65412 B St', 0, NULL, 15, NULL, NULL, '1998-02-05', NULL, 8.25),
(14, 'Jeremy David', 111111112, 2356895654, 159, '2 Molly Way', 1, NULL, 9, NULL, NULL, '2000-06-03', NULL, 16000.00),
(15, 'Luke Ted', 111111144, 6988532587, 354, '65 Southland Av', 1, NULL, 9, NULL, NULL, '2004-09-09', NULL, 20000.00),
(2, 'Ricky Tanner', 125651452, 9856984523, 696, '1585 H st', 0, 'Abcdef', 4, 'omegaman@aol.com', NULL, '1990-06-08', '1999-06-10', 10.00),
(3, 'Susan Phillips', 145969658, 2586521452, 369, '695 LMNOP st', 0, 'Password', 4, 'streetsmartkid@hampster.edu', NULL, '1972-06-09', NULL, 15.00),
(4, 'George Scott', 147589652, 5896583541, 696, '4521 Gold st', 1, 'Alpha', 9, NULL, NULL, '1999-07-25', NULL, 42000.00),
(5, 'Erin Abernathy', 256985698, 4736593569, 369, '635 Number ln', 0, 'Bottle', 6, 'drinkerster@gmail.com', NULL, '1998-12-20', NULL, 30.00),
(6, 'Ted Smith', 352956587, 2586584763, 369, '12 S st', 1, 'Worksu…', 9, NULL, NULL, '1989-06-08', NULL, 50000.00),
(7, 'Harry Buts', 458521658, 2586584763, 674, '1 wonder st', 0, 'Password', 6, NULL, NULL, '1970-10-20', NULL, 12.00),
(8, 'Maynar Teener', 256656521, 2596573257, 674, '24 nice ln', 0, 'Password', 6, 'Meme585@gmail.com', NULL, '2005-06-04', NULL, 9.25),
(9, 'Matt Longfella', 958786548, 5249868525, 354, '6144 Computer Street', 1, 'Password', NULL, 'thisisshort@az.com', NULL, '2000-09-24', NULL, 60000.00),
-- Non Sample Data
(16, 'Lucas Liang', 768594332, 1029384756, 247, '123 abc st', 1, 'helloworld', NULL, 'lucas@abc.com', NULL, '2000-09-24', NULL, 60000.00),
(17, 'Mike Oxlong', 102939452, 6758493012, 247, '456 xyz st', 1, 'Password', 16, 'mike@abc.com', NULL, '2003-09-04', NULL, 40000.00),
(18, 'Michael Jack', 129364702, 5846373833, 354, '987 hij st', 0, NULL, 17, NULL, NULL, '1989-06-08', NULL, 25.00);

-- create item table
create table item(
	ItemID			Int,
	Brand			VarChar(100)	Not Null,
	Description		VarChar(100)	Not Null,
	Price			Decimal(7,2)	Not Null,
	Cost			Decimal(7,2)	Not Null,
	Shape			VarChar(100)	Not Null,
	Size			VarChar(100)	Not Null,
	UPC				Int				Not Null,
	Weight			Decimal(7,2)	Not Null,
	Taxable			Int				Not Null,
	primary key(ItemID)
);

-- populate item table
insert into item 
values 
(12, 'Nabisco', 'Cookies', 2.25, 1.00, 'Oval', '23x5x20', 224852, 22.40, 1),
(145, 'Kleenex', 'Tissues', 2.99, 1.00, 'Rectangle', '3x19x4', 178965, 34.00, 0),
(1566, 'HomeBrand', 'Spaghetti', 0.99, 0.50, 'Round', '3x3x3', 698547, 3.00, 0),
(2365, 'Kellogg', 'Cereal', 1.99, 0.50, 'Round', '10x10x10', 557858, 18.00, 1),
(256, 'Hersey', 'Candy', 3.99, 2.00, 'Rectangle', '4x16x6', 123058, 52.80, 0),
(335, 'DelMonte', 'Canned Fruit', 0.50, 0.10, 'Square', '3x3x3', 411255, 5.20, 1),
(3521, 'Nabisco', 'Crackers', 4.00, 2.00, 'Round', '4x4x4', 254413, 2.00, 0),
(4587, 'Kraft', 'Cheese', 6.00, 4.00, 'Rectangle', '6x12x3', 845532, 0.11, 0),
(658, 'PhilipMorris', 'Cigarettes', 5.00, 3.00, 'Square', '8x8x8', 596543, 89.00, 0),
(84854, 'Quaker', 'Oatmeal', 2.50, 1.00, 'Square', '2x2x2', 556487, 1.00, 0);

-- create inventory table table
create table inventory(
	Item_ID		Int		Not Null, 
	Store_ID	Int		Not Null,
	Quantity	Int		Not Null,
	primary key (Item_ID, Store_ID)	
);

-- populate inventory table 
insert into inventory
values
(1566, 159, 31), 
(335, 159, 27), 
(145, 247, 56), 
(256, 348, 100), 
(1566, 354 ,4), 
(3521, 369, 113), 
(2365, 674, 0),
(4587, 674, 23), 
(12, 696, 23), 
(658, 696, 38), 
(84854, 778, 350),
(12, 854, 10), 
(658, 854, 10), 
(145, 989, 560),
-- Non Sample Data
(335, 247, 50),
(256, 247, 0);

-- create customer table
create table customer(
	Cust_ID			Int				Not Null,
	CustName		VarChar(100)	Not Null,
	Phone			BigInt			Null,
	Email			VarChar(100)	Null,
	Date_joined		Date			Not Null,
	primary key(Cust_ID)
);

-- populate customer table
insert into customer
values
(105, 'Master Shake', 5555555555, 'MixMaster@crimefighter.org', '2000-08-25'),
(178, 'Bruce Wayne', 6619872145, 'IamBatman@crimefighter.org', '2000-01-09'),
(179, 'Seymoure Butes', 4789582145, 'Sbutes@education.edu', '2001-01-01'),
(50, 'Bob Hope', 6615552485, 'Bobhope@gmail.com', '2001-01-01'),
(51, 'Renee Hicks', 4589854588, 'Dragonthing@aol.com', '2005-05-05'),
(52, 'Scott Sheer', 4176521425, 'Scotts@hotmail.com', '2011-12-12'),
(53, 'Colleen Mctyre', NULL, 'CMcT@ct.com', '2008-08-12'),
(58, 'Bart Simpson', NULL, NULL, '2001-06-06'),
(67, 'Lisa Girl', 6619755896, NULL, '1999-04-06'),
(99, 'Jeremy Scott', 4586895847, 'TheBigMan@gmail.com', '2000-01-09'),
-- EXTRA DATA
(1, 'Lucas Small', 1234565432, 'small@abc.com', '2000-01-01'), 
(2, 'Lucas Big', 1234567898, 'big@abc.com', '2000-01-01'); 

-- create purchase_item table
create table purchase_item(
	Purchase_ID			Int		Not Null,
	Item_ID				Int		Not Null,
	Customer_ID			Int		Not Null,
	Quantity			Int		Not Null,
	Date_of_Purchase	Date	Not Null,
	Server_ID			Int		Not Null,
	primary key(Purchase_ID, Item_ID, Customer_ID)
);

-- populate purchase table
insert into purchase_item
values
(1, 256, 50, 2, '2011-06-10', 1), 
(1, 2365, 50, 2, '2011-06-10', 1),
(2, 145, 178, 10, '2011-12-12', 12),
(3, 4587, 99, 2, '2010-06-05', 11),
(4, 4587, 105, 4, '2007-04-05', 3),
(5, 1566, 51, 4, '2011-06-09', 15),
(5, 145, 51, 3, '2011-06-09', 15),
(5, 3521, 51, 2, '2011-06-09', 15),
(5, 84854, 51, 2, '2011-06-09', 15),
(6, 2365, 52, 2, '2010-08-12', 2),
(6, 4587, 52, 2, '2010-08-12', 2),
(7, 12, 179, 2, '2009-11-05', 7),
(7, 658, 179, 2, '2009-11-05', 7),
-- Non Sample Data
(8, 256, 1, 1, '2009-09-09', 1), 
(9, 1566, 2, 1, '2010-10-10', 15), 
(9, 145, 2, 1, '2010-10-10', 15), 
(9, 3521, 2, 1, '2010-10-10', 15);

-- create employee_dependent table
create table employee_dependent(
	Employee_ID		Int				Not Null,
	Dependent_Name	VarChar(50)		Not Null,
	primary key(Employee_ID, Dependent_Name)
);

-- populate employee_dependent table
insert into employee_dependent
values
(16, 'Liang Liang'),
(17, 'Mary Oxlong'),
(18, 'Hugh Jack');


-- ADDING FOREIGN KEYS


-- Store Table

alter table store 
	add foreign key (Manager_ID) references employee(Emp_ID)
	on delete no action;

-- Employee Table

alter table employee 
	add foreign key (StoreRef_ID) references store(Store_ID)
	on delete no action;

-- Inventory Table

alter table inventory
  add foreign key (Item_ID) references item(ItemID)
  on delete no action;

alter table inventory
  add foreign key (Store_ID) references store(Store_ID)
  on delete no action;

-- Purchase_Item Table

alter table purchase_item
	add foreign key (Item_ID) references item(ItemID)
	on delete no action;

alter table purchase_item
	add foreign key (Customer_ID) references customer(Cust_ID)
	on delete no action;

alter table purchase_item
	add foreign key (Server_ID) references employee(Emp_ID)
	on delete no action;

-- Employee_Dependent Table

alter table Employee_Dependent
	add foreign key (Employee_ID) references employee(Emp_ID)
	on delete no action;
