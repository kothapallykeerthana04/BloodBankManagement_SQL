
-- Insert a new donor
INSERT INTO Donors (DonorID, FirstName, LastName, BloodType, LastDonationDate, PhoneNumber, Email, Address)
VALUES (1, 'John', 'Doe', 'O+', '2025-04-15', '1234567890', 'john.doe@example.com', '123 Main St');

-- Insert a new blood unit
INSERT INTO BloodUnits (UnitID, DonorID, BloodType, CollectionDate, ExpirationDate, Status)
VALUES (101, 1, 'O+', '2025-04-15', '2025-06-15', 'Available');

-- Find available blood units by blood type
SELECT * FROM BloodUnits
WHERE BloodType = 'O+' AND Status = 'Available' AND ExpirationDate > CURDATE();

-- Mark a blood unit as used
UPDATE BloodUnits
SET Status = 'Used'
WHERE UnitID = 101;

-- Schedule a transfusion
INSERT INTO Transfusions (TransfusionID, RecipientID, UnitID, TransfusionDate)
VALUES (5001, 2, 101, '2025-04-20');
