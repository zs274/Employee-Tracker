USE employee_db;

INSERT INTO department (name)
VALUES ("Marketing");

INSERT INTO department (name)
VALUES ("Sales");

INSERT INTO department (name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("Human Resources");

SELECT * FROM department;

--------------------------------------

INSERT INTO role (title, salary, department_id)
VALUES ("Assistant", 22000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Consultant", 25000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("HR Manager", 45000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("Head of Marketing", 55000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Floor Manager", 34000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 40000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Budget Analyst", 36000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Recruitment", 28000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("Budget Manager", 23000, 3);

SELECT * FROM role;

----------------------------------------

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Cilian", "Hilton", 3, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jacob", "Webb", 8, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Charlie", "Stevens", 9, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kelly", "Krause", 4, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Victor", "Lovell", 2, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Lauren", "Bowers", 5, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Chloe", "Bauer", 6, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kaiden", "Bernard", 8, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Susan", "Grant", 1, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tayah", "Cole", 1, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Martin", "Mullen", 5, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mattie", "Guerrero", 1, 4);

SELECT * FROM employee;