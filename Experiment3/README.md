# 📘 Worksheet–3 : Conditional Logic in PostgreSQL

## 👨‍🎓 Student Details
- **Name:** Aman Kumar  
- **UID:** 25MCA20128  
- **Branch:** MCA General  
- **Section/Group:** 25MCA_KAR-1  
- **Semester:** II  
- **Subject:** Technical Training  
- **Subject Code:** 25CAP-652  
- **Date of Performance:** 27-01-2026  

---

## 🎯 Aim of the Session
To implement conditional decision-making logic in PostgreSQL using **CASE expressions** and **IF–ELSE constructs** for classification, validation, and rule-based data processing.

---

## 🛠 Tools Used
- **PostgreSQL** – Open-source relational database system

---

## 🎯 Objectives
- Understand conditional execution in SQL  
- Implement decision-making logic using CASE  
- Apply rule-based data processing  
- Solve real-world SQL scenarios  
- Improve backend & interview-level SQL logic  

---

## 🧪 Experiment / Practical Work

### 1️⃣ Table Creation
```sql
CREATE TABLE schema_analysis (
    id SERIAL PRIMARY KEY,
    schema_name VARCHAR(50),
    violation_count INT
);
2️⃣ Insert Records
sql
Copy code
INSERT INTO schema_analysis (schema_name, violation_count) VALUES
('FinanceSchema', 0),
('PayrollSchema', 2),
('InventorySchema', 2),
('HRSchema', 14),
('EmployeeSchema', 9);
3️⃣ Classifying Data Using CASE
sql
Copy code
SELECT 
    schema_name,
    violation_count,
    CASE
        WHEN violation_count = 0 THEN 'No Violation'
        WHEN violation_count BETWEEN 1 AND 3 THEN 'Minor Violation'
        WHEN violation_count BETWEEN 4 AND 8 THEN 'Moderate Violation'
        WHEN violation_count >= 9 THEN 'Critical Violation'
    END AS violation_level
FROM schema_analysis;
📌 Output:
Schemas classified based on violation severity.

4️⃣ Applying CASE Logic in UPDATE
sql
Copy code
ALTER TABLE schema_analysis
ADD COLUMN approval_status VARCHAR(20);
sql
Copy code
UPDATE schema_analysis
SET approval_status = CASE
    WHEN violation_count = 0 THEN 'Approved'
    WHEN violation_count BETWEEN 1 AND 5 THEN 'Needs Review'
    WHEN violation_count > 5 THEN 'Rejected'
END;
📌 Output:
Approval status automatically assigned.

5️⃣ IF–ELSE Logic Using PL/pgSQL
sql
Copy code
DO $$
DECLARE
    v_count INT := 14;
BEGIN
    IF v_count = 0 THEN
        RAISE NOTICE 'No Violations Found.';
    ELSIF v_count BETWEEN 1 AND 3 THEN
        RAISE NOTICE 'Minor Violations Present.';
    ELSIF v_count BETWEEN 4 AND 8 THEN
        RAISE NOTICE 'Moderate Violations Present.';
    ELSE
        RAISE NOTICE 'Critical Violations Present.';
    END IF;
END$$;
📌 Output:
Conditional message displayed using IF–ELSE logic.

6️⃣ Real-World Example: Grading System
Table Creation
sql
Copy code
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);
Insert Records
sql
Copy code
INSERT INTO students (student_name, marks) VALUES
('Arjun', 92),
('Riya', 76),
('Kabir', 64),
('Simran', 48),
('Vikram', 33);
Grade Classification
sql
Copy code
SELECT
    student_name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'A'
        WHEN marks >= 75 THEN 'B'
        WHEN marks >= 60 THEN 'C'
        WHEN marks >= 40 THEN 'D'
        ELSE 'Fail'
    END AS grade
FROM students;
📌 Output:
Students graded based on marks.

7️⃣ Custom Sorting Using CASE
sql
Copy code
SELECT *
FROM schema_analysis
ORDER BY
    CASE
        WHEN violation_count >= 9 THEN 1
        WHEN violation_count BETWEEN 4 AND 8 THEN 2
        WHEN violation_count BETWEEN 1 AND 3 THEN 3
        ELSE 4
    END,
    schema_name;
📌 Output:
Schemas sorted by violation priority.

📊 I/O Analysis
Input
SQL queries using CASE & IF–ELSE

Schema violation data

Student marks data

Output
Classified schema violations

Approval status assigned

Conditional messages displayed

Student grades generated

Priority-based sorted data

✅ Learning Outcomes
Practical use of CASE expressions

Implementation of IF–ELSE logic

Rule-based SQL processing

Real-world PostgreSQL use cases


