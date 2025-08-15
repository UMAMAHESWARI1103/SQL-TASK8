# Hospital Management – (Stored Procedures & Functions)

##  Overview
This project is part of **Task 8** in the SQL Developer Internship.  
The goal is to learn how to create and use **Stored Procedures** and **Functions** in **MySQL Workbench** to make SQL logic reusable and modular.  
The database is based on a **Hospital Management System** containing multiple related tables.

##  Database Structure
**Database:** `hospital_db`

**Main Tables:**
- **Patient** – Stores patient details such as ID, name, gender, and date of birth.
- **Doctor** – Stores doctor details such as ID, name, specialty, and department.
- **Department** – Stores information about hospital departments.
- **Appointment** – Stores appointment details linking patients and doctors.

##  Stored Procedure
- A stored procedure was created to retrieve specific data from the hospital database based on given parameters.
- Procedures allow reusing SQL logic without rewriting complex queries.
- Parameters can be **IN**, **OUT**, or **INOUT** to pass and retrieve values.

##  Function
- A function was created to return a calculated value from the hospital database.
- Functions can be used inside SQL statements for quick calculations or data retrieval.
- Functions always return a single value.

##  How to Use
1. Open **MySQL Workbench** and connect to your MySQL server.
2. Create the `hospital_db` database and its tables.
3. Insert sample data into the tables.
4. Create the stored procedure and function using the `CREATE PROCEDURE` and `CREATE FUNCTION` statements.
5. Call the procedure using `CALL` and the function using a `SELECT` statement.

##  Key Learnings
- Stored procedures help **modularize** SQL code.
- Functions return single values and can be embedded in queries.
- Both can improve performance and reduce repetitive code.

##  Dropping
Stored procedures and functions can be dropped when no longer needed to keep the database clean.
