CREATE TABLE "employees" (
    "emp_no" VARCHAR   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "department_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_department_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "department_employees" (
    "emp_no" VARCHAR   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_department_employees" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" VARCHAR   NOT NULL,
    "salary" VARCHAR   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no","salary"
     )
);

CREATE TABLE "title" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "department_employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_title_id" FOREIGN KEY("title_id")
REFERENCES "title" ("title_id");

ALTER TABLE "department_manager" ADD CONSTRAINT "fk_department_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department_manager" ("dept_no");

ALTER TABLE "department_employees" ADD CONSTRAINT "fk_department_employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

