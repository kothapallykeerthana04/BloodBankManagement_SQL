
CREATE TABLE Donors (
    DonorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BloodType VARCHAR(5),
    LastDonationDate DATE,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address TEXT
);

CREATE TABLE BloodUnits (
    UnitID INT PRIMARY KEY,
    DonorID INT,
    BloodType VARCHAR(5),
    CollectionDate DATE,
    ExpirationDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID)
);

CREATE TABLE Recipients (
    RecipientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BloodType VARCHAR(5),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address TEXT
);

CREATE TABLE Transfusions (
    TransfusionID INT PRIMARY KEY,
    RecipientID INT,
    UnitID INT,
    TransfusionDate DATE,
    FOREIGN KEY (RecipientID) REFERENCES Recipients(RecipientID),
    FOREIGN KEY (UnitID) REFERENCES BloodUnits(UnitID)
);
