# DCIT 318 – Assignment 4  
**Medical Database Management using SQL Server**

---

##  Project Description  
This project is part of **DCIT 318: Programming II** and involves designing, creating, and manipulating a medical database using **SQL Server Management Studio (SSMS)**.  
The database stores information about patients, doctors, and their appointments, and demonstrates **CRUD** operations (Create, Read, Update, Delete).

---

##  Database Details  

### **Database Name**
`MedicalDB`

### **Tables and Fields**

#### 1. Patients
| Field        | Type            | Description                          |
|--------------|----------------|--------------------------------------|
| PatientID    | INT (PK)       | Unique identifier for each patient   |
| FirstName    | NVARCHAR(50)   | Patient's first name                 |
| LastName     | NVARCHAR(50)   | Patient's last name                  |
| DateOfBirth  | DATE           | Patient's date of birth              |
| Gender       | NVARCHAR(10)   | Male / Female / Other                |
| Phone        | NVARCHAR(15)   | Contact number                       |
| Address      | NVARCHAR(100)  | Home address                         |

#### 2. Doctors
| Field        | Type            | Description                          |
|--------------|----------------|--------------------------------------|
| DoctorID     | INT (PK)       | Unique identifier for each doctor    |
| FirstName    | NVARCHAR(50)   | Doctor's first name                  |
| LastName     | NVARCHAR(50)   | Doctor's last name                   |
| Specialty    | NVARCHAR(50)   | Medical specialty                    |
| Phone        | NVARCHAR(15)   | Contact number                       |

#### 3. Appointments
| Field            | Type           | Description                               |
|------------------|---------------|-------------------------------------------|
| AppointmentID    | INT (PK)      | Unique identifier for appointment         |
| PatientID        | INT (FK)      | Links to Patients table                   |
| DoctorID         | INT (FK)      | Links to Doctors table                    |
| AppointmentDate  | DATETIME      | Date and time of appointment              |
| Reason           | NVARCHAR(200) | Reason for appointment                    |

---

##  SQL Operations Covered  

1. **Create**  
   - Creating the database and tables.  
2. **Insert**  
   - Adding sample patient, doctor, and appointment records.  
3. **Select**  
   - Viewing data from individual tables.  
   - Using `JOIN` to combine related data.  
4. **Update**  
   - Example: Updating a patient’s phone number.  
5. **Delete**  
   - Example: Deleting an appointment record.  

---

##  How to Run  

1. Open **SQL Server Management Studio (SSMS)**.  
2. Paste the full SQL script into a new query window.  
3. Press **F5** or click **Execute** to run it.  
4. View results in the Results Grid.  

---

**Author:** Prince William  
**Course:** DCIT 318 – Programming II  
**Year:** 2025  
