CREATE TABLE "departments" (
    "dept_no" 		VARCHAR(10) NOT NULL,
    "dept_name" 	VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" 		VARCHAR(10)	NOT NULL,
    "title_id" 		VARCHAR(10)	NOT NULL,
    "birth_date" 	DATE		NOT NULL,
    "first_name" 	VARCHAR(50)	NOT NULL,
    "last_name" 	VARCHAR(50)	NOT NULL,
    "sex" 			VARCHAR(1)	NOT NULL,
    "hire_date" 	DATE		NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "title_id"		VARCHAR(10)	NOT NULL,
    "title" 		VARCHAR(50)	NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "salaries" (
    "emp_no" 		VARCHAR(10)	NOT NULL,
    "salary" 		INTEGER		NOT NULL
);

CREATE TABLE "department_employees" (
    "emp_no" 		VARCHAR(10)	NOT NULL,
    "dept_no" 		VARCHAR(10)	NOT NULL,
	CONSTRAINT "pk_emp_no_dept_no" PRIMARY KEY(
		"emp_no", "dept_no"
	) 
);

CREATE TABLE "department_manager" (
    "dept_no" 		VARCHAR(10)	NOT NULL,
    "emp_no" 		VARCHAR(10)	NOT NULL
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_title_id" FOREIGN KEY("title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "department_employees" ADD CONSTRAINT "fk_department_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "department_employees" ADD CONSTRAINT "fk_department_employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "department_manager" ADD CONSTRAINT "fk_department_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "department_manager" ADD CONSTRAINT "fk_department_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");








SELECT * 
FROM employees






