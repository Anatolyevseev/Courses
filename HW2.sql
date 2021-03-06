ALTER TABLE [Guests] ADD [Birthdays] DATE;
ALTER TABLE [Guests] ADD [Cakedays] DATE;
ALTER TABLE [Supplies] ADD [TavernID] INT;
ALTER TABLE Taverns ADD UserID INT;
ALTER TABLE [Supplies] ADD SupProductsID INT;
ALTER TABLE Services ADD ServStatusID INT;
ALTER TABLE Services ADD TavernID INT;
ALTER TABLE ReceivedSups ADD SupplyID INT;
ALTER TABLE ReceivedSups ADD TavernID INT;
ALTER TABLE ReceivedSups ADD SupProductsID INT;
ALTER TABLE Guests ADD TavernID INT;
ALTER TABLE Guests ADD ServiceID INT;
ALTER TABLE SALES ADD TavernID INT;
ALTER TABLE SALES ADD ServiceID INT;
ALTER TABLE SALES ADD GuestID INT;

ALTER TABLE Taverns ADD FOREIGN KEY (LocationID) References Location(ID);
ALTER TABLE Users ADD FOREIGN KEY (RoleID) References Roles(ID); 
ALTER TABLE Taverns ADD FOREIGN KEY (UserID) References Users(ID);
ALTER TABLE Supplies ADD FOREIGN KEY (TavernID) References Taverns(ID); 
ALTER TABLE Supplies ADD FOREIGN KEY (SupProductsID) References SupProducts(ID);
ALTER TABLE Services ADD Foreign KEY (ServStatusID) References ServStatus(ID);
ALTER TABLE Services ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE ReceivedSups ADD FOREIGN KEY (SupplyID) References Supplies(ID);
ALTER TABLE ReceivedSups ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE ReceivedSups ADD FOREIGN KEY (SupProductsID) References SupProducts(ID);
ALTER TABLE Guests ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE Guests ADD FOREIGN KEY (ServiceID) References Services(ID);
ALTER TABLE SALES ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE SALES ADD FOREIGN KEY (ServiceID) References Services(ID);
ALTER TABLE SALES ADD FOREIGN KEY (GuestID) References Guests(ID);

DROP TABLE [BasementRats];

CREATE TABLE [GUESTSTATUS](
ID INT IDENTITY(1, 1) PRIMARY KEY,
StatusName varchar(255),
);


CREATE TABLE [Classes](
ID INT IDENTITY(1, 1) PRIMARY KEY,
ClassesName varchar(255),
);

CREATE TABLE [SupplySales] (
	  ID int IDENTITY(1,1) PRIMARY KEY,
	   SuplyName varchar(255),
	   SuplyLocation varchar(255),
	);

CREATE TABLE [GUESTCLASS](
GUESTID INT FOREIGN KEY REFERENCES Guests (ID),
GUESTSTATUSID INT FOREIGN KEY REFERENCES GuestStatus (ID),
CLASSID INT FOREIGN KEY REFERENCES Classes (ID),
LEVEL INT,
);


INSERT INTO GuestStatus (StatusName)
VALUES
   ( 'Sick'),
   ( 'Fine'),
   ('Raging'),
   ('Placid'),
   ('Hungry');


INSERT INTO Classes (ClassesName)
VALUES
   ('Mage'),
   ('Figther'),
   ('SQL'),
   ('Thief'),
   ('Sword sharpening');






ALTER TABLE SupplySales ADD FOREIGN KEY(SuppliesID) References Supplies(ID);
ALTER TABLE Taverns ADD PRIMARY KEY (ID);
ALTER TABLE Users ADD PRIMARY KEY (ID);
ALTER TABLE Roles ADD PRIMARY KEY (ID);
ALTER TABLE Location ADD PRIMARY KEY (ID);
ALTER TABLE BasementRats ADD PRIMARY KEY (ID);
ALTER TABLE Supplies ADD PRIMARY KEY (ID);
ALTER TABLE SupProducts ADD PRIMARY KEY (ID);
ALTER TABLE ReceivedSups ADD PRIMARY KEY (ID);
ALTER TABLE Services ADD PRIMARY KEY (ID);
ALTER TABLE ServStatus ADD PRIMARY KEY (ID);
ALTER TABLE Guests ADD PRIMARY KEY (ID);
ALTER TABLE SALES ADD PRIMARY KEY (ID);

