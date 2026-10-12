# Smart Payroll & HR Management System
Advanced academic mini project using Java, HTML, CSS and JavaScript. Local Java HTTP server; no Maven or database setup required.

## Features
- Admin and employee demo login
- Employee add/delete, search and department filter
- Attendance register with Present, Absent, Half Day and Work From Home
- Employee leave requests; admin approval/rejection
- Monthly payroll history, printable payslips (browser Print → Save as PDF)
- Dashboard, department analytics and CSV export
- CSV persistence in `data/`

## Run in Eclipse
1. Extract the ZIP and create a Java project.
2. Copy `src/payroll/Main.java` into package `payroll`.
3. Copy `web` and `data` to the project root.
4. Use JDK 11+ and run `payroll.Main` as Java Application.
5. Open the URL printed in Console, normally `http://127.0.0.1:8081`.
6. Keep the Java process running.

Alternatively, from project root: `javac -d out src/payroll/Main.java` then `java -cp out payroll.Main`.
If port 8081 is busy: `java -Dport=8090 -cp out payroll.Main`.

## Demo logins
Admin: `admin / admin123`
Employee 1: `employee / E1001`
Employee 2: `employee2 / E1002`

## Salary model
Bonus = Basic × bonus rate / 100; Gross = Basic + allowances + bonus; demo deduction = 5% gross; Net = gross − deductions. Recorded absences create an additional simplified deduction. The 5% is a placeholder, NOT official Indian income-tax calculation. Not production payroll software.

## Limitations
Hard-coded demo credentials, in-memory sessions and CSV persistence are educational shortcuts. Production needs password hashing, database, audit logs, accurate statutory payroll rules and secure HTTPS.
