# TÖL303G Gagnasafnsfræði Vikublað 10

# Verkefni 10

```
/* 1. Find the last names of all middle managers, i.e. those employees who supervise someone and are supervised by someone. You may assume that no employee supervises himself. */

SELECT Lname FROM EMPLOYEE
WHERE Ssn IN (SELECT Super_ssn FROM EMPLOYEE)

/* 2. Find the last names of those department managers who work on some project that is not controlled by their own department. Not all supervisors are department managers. */

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
```