## 👨‍🎓 Student Details
- **Name:** Aman Kumar  
- **UID:** 25MCA20128  
- **Branch:** MCA (General)  
- **Section/Group:** 25MCA_KAR-1  
- **Semester:** II  
- **Subject Name:** Technical Training  
- **Subject Code:** 25CAP-652  
- **Date of Performance:** 05-01-2026  

---

## 🎯 Aim
To design and implement a sample database system using **DDL, DML, and DCL** commands, including database creation, data manipulation, schema modification, and role-based access control to ensure data integrity and secure access.

---

## 🎯 Objective
- To understand **DDL, DML, DQL, and DCL**
- To work with **constraints** in PostgreSQL
- To implement **role-based access control**
- To ensure **data integrity and security**

---

## 🛠️ Technologies Used
- **Database:** PostgreSQL  
- **Language:** SQL  

---

## 🧾 Implementation / SQL Code

### 🔹 DDL Commands (Table Creation)

```sql
-- DEPARTMENT TABLE
CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(20) NOT NULL UNIQUE,
    salary FLOAT CHECK (salary >= 0)
);

-- EMPLOYEE TABLE
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(20) NOT NULL,
    department_id INT NOT NULL REFERENCES department(department_id),
    employee_contact VARCHAR(20),
    join_date DATE NOT NULL,
    end_date DATE CHECK (end_date >= join_date)
);

-- ALTER TABLE OPERATIONS
ALTER TABLE employee ADD work_location VARCHAR(20);
ALTER TABLE employee DROP work_location;
ALTER TABLE employee ADD status VARCHAR(20) DEFAULT 'active';

-- PROJECT TABLE
CREATE TABLE project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(20) NOT NULL UNIQUE,
    department_id INT NOT NULL REFERENCES department(department_id),
    start_date DATE NOT NULL,
    end_date DATE CHECK (end_date >= start_date)
);
🔹 DML Commands (Insert, Update, Delete)
-- INSERT INTO DEPARTMENT
INSERT INTO department VALUES
(101, 'Manager', 90000),
(102, 'HR', 70000),
(103, 'EMPLOYEE', 50000);

-- UPDATE DATA
UPDATE department SET salary = 80000 WHERE department_id = 101;
UPDATE department SET department_name = 'Employee' WHERE department_id = 103;

-- CHECK CONSTRAINT TEST
INSERT INTO department VALUES (104, 'DEVELOPER', -30000);
INSERT INTO department VALUES (104, 'DEVELOPER', 30000);
DELETE FROM department WHERE department_id = 104;

-- INSERT INTO EMPLOYEE
INSERT INTO employee VALUES
(1, 'Rahul', 101, '8888888888', '2001-04-12', '2010-07-13'),
(2, 'Anuj', 102, '7777777777', '2003-06-10', '2004-05-11'),
(3, 'Aman', 103, '6666666666', '2006-05-20', '2009-09-11'),
(4, 'Naman', 103, '5555555555', '2006-06-25', '2009-08-11'),
(5, 'Karan', 103, '4444444444', '2006-03-12', '2009-05-11');

DELETE FROM employee WHERE employee_id = 3;

-- INSERT INTO PROJECT
INSERT INTO project VALUES
(11, 'P1', 103, '2025-08-14', '2025-09-14'),
(12, 'P2', 103, '2025-08-14', '2025-08-30');

🔹 DQL Commands (Select Queries)
SELECT * FROM department;
SELECT * FROM employee;
SELECT * FROM project;

🔹 DCL Commands (Role & Security)
-- CREATE ROLE
CREATE ROLE reporting_user
LOGIN
PASSWORD 'user123';

-- GRANT & REVOKE PERMISSIONS
GRANT SELECT ON department TO reporting_user;
REVOKE SELECT ON department FROM reporting_user;

GRANT SELECT ON project TO reporting_user;
REVOKE CREATE ON SCHEMA public FROM reporting_user;

🔹 Query Executed by reporting_user
SELECT * FROM project;

📤 Output

<img width="537" height="163" alt="Screenshot 2026-01-27 221923" src="https://github.com/user-attachments/assets/88b4fc6f-5e9e-42aa-b5df-8f8a189b9dec" />

<img width="1074" height="193" alt="Screenshot 2026-01-27 221939" src="https://github.com/user-attachments/assets/88e35de3-fa5b-4342-b156-5d1ece0e241c" />

<img width="714" height="131" alt="Screenshot 2026-01-27 221951" src="https://github.com/user-attachments/assets/4d440a64-fd9e-4dc4-8a12-a97ecef326eb" />

 

📚 Learning Outcomes

Learned SQL query writing in PostgreSQL

Understood DDL, DML, DQL, and DCL commands

Implemented CHECK constraints

Learned role-based security management

