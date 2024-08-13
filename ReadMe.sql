-- Use this sql to populate your database in microsoft sql 
-- replace the constant "DATABASESTRING" inside App.xaml.cs 
-- of this MAUI Program to you database connection string 
-- for it to work properly.

-- Drop the tables
DROP TABLE RentalEquipment;
DROP TABLE Rental;
DROP TABLE Equipment;
DROP TABLE Customer;
DROP TABLE CategoryList;

-- Create CategoryList table
CREATE TABLE CategoryList (
    CategoryId INT PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL
);

INSERT INTO CategoryList (CategoryId, Name)
VALUES (10, 'Power tools'),
       (20, 'Yard equipment'),
       (30, 'Compressors'),
       (40, 'Generators'),
       (50, 'Air Tools');

-- Create Customer table
CREATE TABLE Customer (
    CustomerId INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    PhoneNumber BIGINT NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    BanStatus BIT NOT NULL,
    Notes NVARCHAR(MAX) NULL
);

INSERT INTO Customer (CustomerId, FirstName, LastName, PhoneNumber, Email, BanStatus, Notes)
VALUES (1001, 'John', 'Doe', 5555551212, 'jd@sample.net', 0, NULL);

INSERT INTO Customer (CustomerId, FirstName, LastName, PhoneNumber, Email, BanStatus, Notes)
VALUES (1002, 'Jane', 'Smith', 5555553434, 'js@live.com', 0, '10% discount');

INSERT INTO Customer (CustomerId, FirstName, LastName, PhoneNumber, Email, BanStatus, Notes)
VALUES (1003, 'Michael', 'Lee', 5555555656, 'ml@sample.net', 1, 'Banned');

-- Create Equipment table
CREATE TABLE Equipment (
    EquipmentId INT PRIMARY KEY,
    Category INT NOT NULL,
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255) NULL,
    DailyRentalCost FLOAT NOT NULL,
    AvailabilityStatus NVARCHAR(50) NOT NULL,
    Sellability BIT NOT NULL,
    SellPrice FLOAT NULL,
    CONSTRAINT FK_Category FOREIGN KEY (Category) REFERENCES CategoryList(CategoryId)
);

INSERT INTO Equipment (EquipmentId, Category, Name, Description, DailyRentalCost, AvailabilityStatus, Sellability, SellPrice)
VALUES (101, 10, 'Hammer drill', 'Powerful drill for concrete and masonry', 25.99, 'Available', 1, NULL);

INSERT INTO Equipment (EquipmentId, Category, Name, Description, DailyRentalCost, AvailabilityStatus, Sellability, SellPrice)
VALUES (201, 20, 'Chainsaw', 'Gas-powered chainsaw for cutting wood', 49.99, 'Available', 1, NULL);

INSERT INTO Equipment (EquipmentId, Category, Name, Description, DailyRentalCost, AvailabilityStatus, Sellability, SellPrice)
VALUES (202, 20, 'Lawn mower', 'Self-propelled lawn mower with mulching function', 19.99, 'Available', 1, NULL);

INSERT INTO Equipment (EquipmentId, Category, Name, Description, DailyRentalCost, AvailabilityStatus, Sellability, SellPrice)
VALUES (301, 30, 'Small Compressor', '5 Gallon Compressor-Portable', 14.99, 'Available', 1, NULL);

INSERT INTO Equipment (EquipmentId, Category, Name, Description, DailyRentalCost, AvailabilityStatus, Sellability, SellPrice)
VALUES (501, 50, 'Brad Nailer', 'Brad Nailer. Requires 3/4 to 1 1/2 Brad Nails', 10.99, 'Available', 1, NULL);

INSERT INTO Equipment (EquipmentId, Category, Name, Description, DailyRentalCost, AvailabilityStatus, Sellability, SellPrice)
VALUES (203, 20, 'Chainsaw', 'Gas-powered chainsaw for cutting wood', 49.99, 'Available', 1, NULL);

-- Create Rental table
CREATE TABLE Rental (
    RentalId INT PRIMARY KEY,
    Date DATE NOT NULL,
    CustomerId INT NOT NULL,
    CONSTRAINT FK_Customer FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId)
);

INSERT INTO Rental (RentalId, Date, CustomerId)
VALUES 
(1000, '2024-02-15', 1001),
(1001, '2024-02-16', 1002);

-- Create RentalEquipment table
CREATE TABLE RentalEquipment (
    RentalEquipmentId INT PRIMARY KEY IDENTITY(1,1),
    RentalId INT NOT NULL,
    EquipmentId INT NOT NULL,
    RentalDate DATE NOT NULL,
    ReturnDate DATE NOT NULL,
    Cost FLOAT NOT NULL,
    CONSTRAINT FK_Rental FOREIGN KEY (RentalId) REFERENCES Rental(RentalId),
    CONSTRAINT FK_Equipment FOREIGN KEY (EquipmentId) REFERENCES Equipment(EquipmentId)
);

INSERT INTO RentalEquipment (RentalId, EquipmentId, RentalDate, ReturnDate, Cost)
VALUES 
(1000, 201, '2024-02-20', '2024-02-23', 149.97),
(1000, 202, '2024-02-20', '2024-02-23', 59.97),
(1001, 501, '2024-02-21', '2024-02-25', 43.96);
