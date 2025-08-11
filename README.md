# DCIT 318 – Assignment 4

## Overview
This repository contains solutions to **Assignment 4** for the DCIT 318 course.  
It is divided into two main parts:

1. **SQL Server Database Management** – MedicalDB
2. **C# Console Application** – Student Data Manager

---

## **Question 1 – SQL Server: MedicalDB**

### Description
We designed and implemented a medical database in **SQL Server Management Studio (SSMS)**.  
The database stores information about patients, doctors, and their appointments.

### Tasks Completed
- **Created** a new database named `MedicalDB`.
- **Created tables**:
  - `Patients`
  - `Doctors`
  - `Appointments`
- Added **primary keys**, **foreign keys**, and **constraints**.
- Inserted **sample records** into all tables.
- Executed **SELECT** queries to view table contents.
- Used **JOIN** queries to combine data across tables.
- Performed an **UPDATE** to modify a patient’s phone number.
- Performed a **DELETE** to remove an appointment.

### Files
- `MedicalDB.sql` – SQL script containing:
  - Database creation
  - Table definitions
  - Insert statements
  - SELECT, JOIN, UPDATE, and DELETE queries

---

## **Question 2 – C# Console App: Student Data Manager**

### Description
A C# console application for managing student records.  
The application allows adding, viewing, searching, and deleting students from an in-memory list.

### Features
- **Add Student** – Enter name, age, and program.
- **View All Students** – Display all records.
- **Search Student by ID** – Locate a student’s details using their ID.
- **Delete Student by ID** – Remove a student’s record.
- **Exit Program** – Close the application.

### Technical Details
- Developed in **C#** with **.NET 8.0**.
- Uses a `List<Student>` to store records.
- Auto-increments student IDs.
- Includes input validation for robust user interaction.

### Files
- `StudentDataManager/` – Source code for the C# application.

---

## **How to Run**

### Running the SQL Script
1. Open **SQL Server Management Studio (SSMS)**.
2. Open `MedicalDB.sql`.
3. Execute the script (`F5`).

### Running the C# Application
```bash
cd StudentDataManager
dotnet run  

---

**Author:** Prince William  
**Course:** DCIT 318 – Programming II  
**Year:** 2025  
