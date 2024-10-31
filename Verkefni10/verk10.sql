/* CREATE TABLE EMPLOYEE
	( Fname VARCHAR(15) NOT NULL
	  Minit CHAR
	  Lname VARCHAR(15) NOT NULL
	  Ssn CHAR(9) NOT NULL
	  Bdate DATE
	  Address VARCHAR(30)
	  Sex CHAR
	  Salary DECIMAL(10 2)
	  Super_ssn CHAR(9)
	  Dno INT NOT NULL
	  PRIMARY KEY(Ssn)
	  FOREIGN KEY(Super_ssn) REFERENCES EMPLOYEE(Ssn)
	  FOREIGN KEY(Dno) REFERENCES DEPARTMENT(Dnumber)
	  DEFERRABLE INITIALLY DEFERRED
	);
CREATE TABLE DEPARTMENT
	( Dname VARCHAR(15) NOT NULL
	  Dnumber INT NOT NULL
	  Mgr_ssn CHAR(9) NOT NULL
	  Mgr_start_date DATE
	  PRIMARY KEY(Dnumber)
	  UNIQUE(Dname)
	  FOREIGN KEY(Mgr_ssn) REFERENCES EMPLOYEE(Ssn)
	);
CREATE TABLE DEPT_LOCATIONS
	( Dnumber INT NOT NULL
	  Dlocation VARCHAR(15) NOT NULL
	  PRIMARY KEY(Dnumber Dlocation)
	  FOREIGN KEY(Dnumber) REFERENCES DEPARTMENT(Dnumber)
	);
CREATE TABLE PROJECT
	( Pname VARCHAR(15) NOT NULL
	  Pnumber INT NOT NULL
	  Plocation VARCHAR(15)
	  Dnum INT NOT NULL
	  PRIMARY KEY(Pnumber)
	  UNIQUE(Pname)
	  FOREIGN KEY(Dnum) REFERENCES DEPARTMENT(Dnumber)
	);
CREATE TABLE WORKS_ON
	( Essn CHAR(9) NOT NULL
	  Pno INT NOT NULL
	  Hours DECIMAL(3 1) NOT NULL
	  PRIMARY KEY(Essn Pno)
	  FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn)
	  FOREIGN KEY(Pno) REFERENCES PROJECT(Pnumber)
	);
CREATE TABLE DEPENDENT
	( Essn CHAR(9) NOT NULL
	  Dependent_name VARCHAR(15) NOT NULL
	  Sex CHAR
	  Bdate DATE
	  Relationship VARCHAR(8)
	  PRIMARY KEY(Essn Dependent_name)
	  FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn)
	); 
*/

/* 1. Find the last names of all middle managers, i.e. those employees who supervise
   someone and are supervised by someone. You may assume that no employee
   supervises himself. */

SELECT Lname FROM EMPLOYEE
WHERE Ssn IN (SELECT Super_ssn FROM EMPLOYEE)

/* 2. Find the last names of those department managers who work on some project
   that is not controlled by their own department. Not all supervisors are depart-
   ment managers. */

SELECT Lname FROM EMPLOYEE
WHERE Ssn IN (SELECT Mgr_ssn FROM DEPARTMENT
               WHERE Dnumber IN (SELECT Dnum FROM PROJECT
                                  WHERE Dnum != Dnumber))

/* 3. Find the last names of those employees who work in no project. */

SELECT Lname FROM EMPLOYEE
WHERE Ssn NOT IN (SELECT Essn FROM WORKS_ON)

/* 4. Find the first and last names of those employees who work in all projects. */

SELECT Fname, Lname FROM EMPLOYEE
WHERE NOT EXISTS (SELECT Pnumber FROM PROJECT
                  WHERE NOT EXISTS (SELECT Essn FROM WORKS_ON
                                    WHERE Pnumber = Pno AND Ssn = Essn))