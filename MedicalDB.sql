-- ===========================
-- 1. CREATE DATABASE
-- ===========================
IF DB_ID('MedicalDB') IS NOT NULL
    DROP DATABASE MedicalDB;
GO

CREATE DATABASE MedicalDB;
GO

-- ===========================
-- 2. USE DATABASE
-- ===========================
USE MedicalDB;
GO

-- ===========================
-- 3. CREATE TABLES
-- ===========================

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender NVARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')),
    Phone NVARCHAR(15),
    Address NVARCHAR(100)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Specialty NVARCHAR(50) NOT NULL,
    Phone NVARCHAR(15)
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATETIME NOT NULL,
    Reason NVARCHAR(200),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);


-- ===========================
-- 4. INSERT SAMPLE DATA
-- ===========================

INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, Phone, Address)
VALUES 
('Ama', 'Mensah', '1995-06-15', 'Female', '024-123-4567', 'Accra'),
('Kwame', 'Boateng', '1980-03-20', 'Male', '020-555-1234', 'Kumasi');

INSERT INTO Doctors (FirstName, LastName, Specialty, Phone)
VALUES
('Yaw', 'Owusu', 'Dermatology', '020-987-6543'),
('Akosua', 'Nyarko', 'Pediatrics', '024-789-1111');

INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Reason)
VALUES
(1, 1, '2025-08-15 10:30:00', 'Skin rash treatment'),
(2, 2, '2025-08-20 14:00:00', 'Child fever check-up');

-- ===========================
-- 5. VIEW INITIAL DATA
-- ===========================
SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT * FROM Appointments;

-- ===========================
-- 6. SELECT WITH JOIN
-- ===========================
SELECT 
    a.AppointmentID,
    p.FirstName AS PatientFirstName,
    p.LastName AS PatientLastName,
    d.FirstName AS DoctorFirstName,
    d.LastName AS DoctorLastName,
    a.AppointmentDate,
    a.Reason
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID;

-- ===========================
-- 7. UPDATE EXAMPLE
-- ===========================
UPDATE Patients
SET Phone = '055-999-8888'
WHERE PatientID = 1;

SELECT * FROM Patients;

-- ===========================
-- 8. DELETE EXAMPLE
-- ===========================
DELETE FROM Appointments
WHERE AppointmentID = 2;

SELECT * FROM Appointments;