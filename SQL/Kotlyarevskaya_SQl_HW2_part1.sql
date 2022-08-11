/* 1) Создать таблицу employees */
CREATE TABLE employees(
	id  serial PRIMARY KEY,
	employee_name varchar(50) NOT NULL
	);
	
SELECT * FROM employees;

/* 2) Наполнить таблицу employee 70 строками */
 INSERT INTO employees (employee_name)
 VALUES ('employee'),
 		('Yarmilo'),
		('Rodion'),
		('Miron'),
		('Aris'),
		('Prohor'),
		('Savin'),
		('Agapit'),
		('Nifont'),
		('Agafodor'),
		('Savel'),
		('Rem'),
		('Emelyan'),
		('Sysoy'),
		('Vitold'),
		('Emelyan'),
		('Emmanuil'),
		('Mitrofan'),
		('Ilarion'),
		('Germogen'),
		('Vladilen'),
		('Kassian'),
		('Kallinik'),
		('Andronik'),
		('Tit'),
		('Sidor'),
		('Ignatiy'),
		('Yuriy'),
		('Valerian'),
		('Avraam'),
		('Seliverst'),
		('Fedul'),
		('Falaley'),
		('Borislav'),
		('Evseviy'),
		('Panteleymon'),
		('Aglaiy'),
		('Melhisedek'),
		('Protasiy'),
		('Avreliy'),
		('Guriy'),
		('Arseniy'),
		('Vladilen'),
		('Ianikit'),
		('Aleksandrin'),
		('Pamfil'),
		('Germogen'),
		('Egor'),
		('Marlen'),
		('Artemidor'),
		('Markell'),
		('Savva'),
		('Silvestr'),
		('Bonifacziy'),
		('Kir'),
		('Velimir'),
		('Vladilen'),
		('Alfey'),
		('Bronislav'),
		('Aaron'),
		('Konstantin'),
		('Kirsan'),
		('Amos'),
		('Ioakim'),
		('Onisiy'),
		('Meletiy'),
		('Azariy'),
		('Yust'),
		('Savel'),
		('Lukian');
	
/* 3) Создать таблицу salary */
CREATE TABLE salary(
	id serial primary KEY,
	monthly_salary int NOT null
	);

SELECT * FROM salary;

/* 4) Наполнить таблицу salary 15 строками */
INSERT INTO salary(monthly_salary)
VALUES (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);

/* 5) Создать таблицу employee_salary */
CREATE TABLE employee_salary(
	id serial PRIMARY KEY,
	employee_id int NOT NULL UNIQUE,
	salary_id int NOT null
);

SELECT * FROM employee_salary;

/* 6) Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id */
INSERT INTO employee_salary(employee_id, salary_id)
VALUES (3, 7),
	   (1, 4),
	   (5, 9),
	   (40, 13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 13),
	   (26, 4),
	   (16, 1),
	   (33, 7),
	   (73, 3),
	   (19, 12),
	   (81, 4),
	   (2, 5),
	   (17, 8),
	   (49, 15),
	   (71, 11),
	   (68, 10),
	   (57, 6),
	   (66, 16),
	   (4, 3),
	   (75, 10),
	   (51, 1),
	   (64, 9),
	   (77, 2),
	   (80, 15),
	   (10, 4),
	   (21, 14),
	   (42, 8),
	   (79, 2),
	   (53, 15),
	   (44, 1),
	   (72, 3),
	   (29, 6),
	   (84, 7),
	   (13, 11),
	   (37, 8),
	   (82, 12),
	   (69, 1);

/* 7) Создать таблицу roles */
CREATE TABLE roles(
	id serial PRIMARY KEY,
	role_name int NOT NULL unique
);
	  
SELECT * FROM roles;
	 
/* 8) Поменять тип столба role_name с int на varchar(30) */
ALTER TABLE roles 
ALTER COLUMN role_name TYPE varchar(30);

/* 9) Наполнить таблицу roles 20 строками */
INSERT INTO roles(role_name)
VALUES ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
   	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
		 
/* 10) Создать таблицу roles_employee */
CREATE TABLE roles_employee(
	id serial PRIMARY KEY,
	employee_id int NOT NULL UNIQUE,
	role_id int NOT NULL,
FOREIGN KEY (employee_id)
  	REFERENCES employees(id),
FOREIGN KEY (role_id) 
	REFERENCES roles(id)
);
		 
SELECT * FROM roles_employee;

/* 11) Наполнить таблицу roles_employee 40 строками */
INSERT INTO roles_employee(employee_id, role_id) 
VALUES (3, 7),
	   (1, 4),
	   (5, 9),
	   (40, 13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 13),
	   (26, 20),
	   (16, 1),
	   (33, 19),
	   (9, 3),
	   (19, 12),
	   (7, 17),
	   (2, 5),
	   (17, 8),
	   (49, 15),
	   (20, 11),
	   (68, 10),
	   (57, 6),
	   (66, 16),
	   (4, 3),
	   (47, 18),
	   (51, 1),
	   (64, 9),
	   (59, 2),
	   (31, 15),
	   (10, 16),
	   (21, 14),
	   (42, 19),
	   (61, 17),
	   (53, 15),
	   (44, 20),
	   (41, 3),
	   (29, 6),
	   (27, 7),
	   (13, 11),
	   (37, 8),
	   (39, 12),
	   (69, 1);
	
	