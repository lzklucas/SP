use [GroceryStore2222770];

-- Create a new Database
-- create database [GroceryStore2222770]

-- Foreign keys addition examaple:
/*
Create Table Staff_Dependent_Relation
( Staff_No Char(4) ,
  Dependent_Name Varchar(30),
  Relationship Varchar(20) not null,
  primary key ( Staff_No, Dependent_Name),
  foreign Key ( Staff_No) References Staff_Relation (Staff_No) )
*/

/*
Create Table Pre_Requisite_Relation
( Mod_Cd varchar(10) ,
  Pre_Requisite varchar(10) ,
  primary key ( Mod_Cd, Pre_Requisite ) ,
  foreign key ( Mod_Cd ) References Module_Relation ( Mod_Cd  ),
  foreign key ( Pre_Requisite ) References Module_Relation ( Mod_Cd ))
*/

-- ACTUAL TABLES

/*
create table store(
	Store_ID		Int, --ref store ref id in employee table
	Store_Address	VarChar(100) Not Null,
	Manager_ID		Int Not Null,
	primary key(Store_ID)
);

-- populate store table
insert into store -- careful  because more than one store can be managed by the same person, IF ADDRESS IS BLANK IT MEAN EXAMPLE WASNT GIVEN (come up with values)
values 
(854, '22556 Elm St', 14), -- (store_id, address, store manager id)
(247, 'abc', 10),
(159, '13636 Fir St', 14),
(778, '341 Main St', 15),
(989, 'abc1', 15),
(354, '820 Birch Rd', 15),
(696, '710 Edison Dr', 4),
(369, '940 Green St', 6),
(674, '14496 Maple Way', 6),
(348, 'abc123', 10);
*/

/*
create table employee(
	Emp_ID			Int,
	EmpName			Varchar(100) Not Null,
	SSN				Int Not Null,
	Phone			BigInt Not Null,
	StoreRef_ID		Int Not Null,
	Emp_Address		VarChar(50) Not Null,
	PayType			Int Not Null,
	Emp_password	VarChar(100) Null,
	Manager			Int Null,
	Email			VarChar(100) Null,
	Date_hired		Date Null,
	Date_Start		Date Not Null,
	Date_end		Date Null,
	pay				Decimal(7,2) Not Null,
	primary key (Emp_ID),
	foreign key (StoreRef_ID) References store(Store_ID)
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
(9, 'Matt Longfella', 958786548, 5249868525, 354, '6144 Computer Street', 1, 'Password', NULL, 'thisisshort@az.com', NULL, '2000-09-24', NULL, 60000.00);
*/

/*
create table item(
	ItemID Int,
	Brand VarChar(100) Not Null,
	Description VarChar(100) Not Null,
	Price Decimal(7,2) Not Null,
	Cost Decimal(7,2) Not Null,
	Shape VarChar(100) Not Null,
	Size VarChar(100) Not Null,
	UPC Int Not Null,
	Weight Decimal(7,2) Not Null,
	Taxable Int Not Null,
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
*/

/*
create table inventory(
	Inventory_ID Int Not Null, 
	Item_ID Int Not Null,
	Quantity Int Not Null,
	Store_ID Int Not Null,
	primary key (Inventory_ID),
	foreign key (Item_ID) references item(ItemID),
	foreign key (Store_ID) references store(Store_ID)
);

-- populate inventory table (can ask teacher if inventory id can reference store id)
insert into inventory
values
(1, 1566, 31, 159), -- (inventory id: 1, item id: 1566, Quantity: 31, store id: 159)
(2, 335, 27, 159), 
(3, 145, 56, 247), 
(4, 256, 100, 348), 
(5, 1566, 4, 354), 
(6, 3521, 113, 369), 
(7, 2365, 0, 674),
(8, 4587, 23, 674), 
(9, 12, 23, 696), 
(10, 658, 38, 696), 
(11, 84854, 350, 778),  --item id in exmaple is 84...
(12, 12, 10, 854), 
(13, 658, 10, 854), 
(14, 145, 560, 989);
*/

/*
create table customer(
	Cust_ID Int,
	CustName VarChar(100) Not Null,
	Phone BigInt Null,
	Email VarChar(100) Null,
	Date_joined Date Not Null,
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
(99, 'Jeremy Scott', 4586895847, 'TheBigMan@gmail.com', '2000-01-09');
*/

/*
create table purchase_item(
	Purchase_ID Int Not Null,
	Item_ID Int Not Null,
	Quantity Int Not Null,
	Date_of_Purchase Date Not Null,
	Customer_ID Int Not Null,
	Server_ID Int,
	primary key(Purchase_ID, Item_ID),
	foreign key (Item_ID) References item(ItemID),
	foreign key (Customer_ID) References customer(Cust_ID),
	foreign key (Server_ID) References employee(Emp_ID)
);

-- populate purchase table
insert into purchase_item
values
(1, 256, 2, '2011-06-10', 50, 1), -- (purchase id:1, item id:256, quantity:2, date of purchase, customer id:50(Bob Hope), server id:1(darren philbin))
(2, 2365, 2, '2011-06-10',50, 1),
(3, 145, 10, '2011-12-12', 178, 12),
(4, 4587, 2, '2010-06-05', 99, 11),
(5, 4587, 4, '2007-04-05', 105, 3),
(6, 1566, 4, '2011-06-09', 51, 15),
(7, 145, 3, '2011-06-09', 51, 15),
(8, 3521, 2, '2011-06-09', 51, 15),
(9, 84854, 2, '2011-06-09', 51, 15),
(10, 2365, 2, '2010-08-12', 52, 2),
(11, 4587, 2, '2010-08-12', 52, 2),
(12, 12, 2, '2009-11-05', 179, 7),
(13, 658, 2, '2009-11-05', 179, 7);
*/





