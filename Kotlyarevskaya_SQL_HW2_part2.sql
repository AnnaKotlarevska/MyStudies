 /* 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами. */
 
 SELECT employee_id, monthly_salary FROM employee_salary
JOIN salary ON employee_salary.salary_id = salary.id
 
 /* 2. Вывести всех работников у которых ЗП меньше 2000. */

SELECT employee_id FROM employee_salary 
JOIN salary ON employee_salary.salary_id = salary.id 
WHERE monthly_salary < 2000

 /* 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но непонятно кто её получает.) */

SELECT employee_name, salary_id FROM employees 
Right JOIN employee_salary ON employee_salary.employee_id = employees.id
WHERE employee_name IS NULL 

 /* 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но непонятно кто её получает.) */

SELECT employee_name, salary_id, monthly_salary  FROM employees
right JOIN employee_salary ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id 
WHERE monthly_salary < 2000 AND employee_name IS NULL 

 /* 5. Найти всех работников кому не начислена ЗП. */

SELECT employee_name, salary_id FROM employees 
Left JOIN employee_salary ON employee_salary.employee_id = employees.id
WHERE salary_id IS null

 /* 6. Вывести всех работников с названиями их должности. */

SELECT employee_name, role_name FROM employees 
JOIN roles_employee ON employees.id = roles_employee.employee_id 
JOIN roles ON roles_employee.role_id = roles.id 

 /* 7. Вывести имена и должность только Java разработчиков. */

SELECT employee_name, role_name FROM employees 
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% Java developer'

 /* 8. Вывести имена и должность только Python разработчиков. */

SELECT employee_name, role_name FROM employees 
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% Python developer' 

 /* 9. Вывести имена и должность всех QA инженеров. */

SELECT employee_name, role_name FROM employees
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% QA engineer'

 /* 10. Вывести имена и должность ручных QA инженеров. */

SELECT employee_name, role_name FROM employees 
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% Manual QA engineer'

 /* 11. Вывести имена и должность автоматизаторов QA */

SELECT employee_name, role_name FROM employees 
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% Automation QA engineer'

 /* 12. Вывести имена и зарплаты Junior специалистов */
SELECT employee_name, monthly_salary FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN employees ON employee_salary.employee_id = employees.id 
JOIN roles_employee ON employees.id = roles_employee.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE 'Junior %'

 /* 13. Вывести имена и зарплаты Middle специалистов */

SELECT employee_name, monthly_salary FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN employees ON employees.id = employee_salary.employee_id 
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE 'Middle %'

 /* 14. Вывести имена и зарплаты Senior специалистов */

SELECT employee_name, monthly_salary FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN employees ON employees.id = employee_salary.employee_id 
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE 'Senior %'

 /* 15. Вывести зарплаты Java разработчиков */

SELECT DISTINCT monthly_salary FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% Java developer'


/* 16. Вывести зарплаты Python разработчиков */

SELECT DISTINCT monthly_salary FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% Python developer'

 /* 17. Вывести имена и зарплаты Junior Python разработчиков */

SELECT employee_name, monthly_salary FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN employees ON employees.id = employee_salary.employee_id 
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name = 'Junior Python developer'

 /* 18. Вывести имена и зарплаты Middle JS разработчиков */

SELECT employee_name, monthly_salary FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN employees ON employees.id = employee_salary.employee_id 
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name = 'Middle JavaScript developer'

 /* 19. Вывести имена и зарплаты Senior Java разработчиков */

SELECT employee_name, monthly_salary FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN employees ON employees.id = employee_salary.employee_id 
JOIN roles_employee ON roles_employee.employee_id = employees.id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name = 'Senior Java developer'

 /* 20. Вывести зарплаты Junior QA инженеров */

SELECT DISTINCT monthly_salary, role_name FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN roles_employee ON roles_employee.employee_id  = employee_salary.employee_id 
RIGHT JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE 'Junior % QA engineer'

 /* 21. Вывести среднюю зарплату всех Junior специалистов */

SELECT DISTINCT avg (monthly_salary) FROM salary
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
RIGHT JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE 'Junior %'

 /* 22. Вывести сумму зарплат JS разработчиков */

SELECT sum (monthly_salary) FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% JavaScript developer'

 /* 23. Вывести минимальную ЗП QA инженеров */

SELECT min (monthly_salary) FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% QA engineer'

 /* 24. Вывести максимальную ЗП QA инженеров */

SELECT max (monthly_salary) FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% QA engineer'

 /* 25. Вывести количество QA инженеров */

SELECT count (employee_salary.employee_id) FROM employee_salary 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% QA engineer'

 /* 26. Вывести количество Middle специалистов. */

SELECT count (employee_salary.employee_id) FROM employee_salary 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE 'Middle %'

 /* 27. Вывести количество разработчиков */

SELECT count (employee_salary.employee_id) FROM employee_salary 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% developer'

 /* 28. Вывести фонд (сумму) зарплаты разработчиков. */

SELECT sum (monthly_salary) FROM salary 
JOIN employee_salary ON employee_salary.salary_id = salary.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
WHERE role_name LIKE '% developer'

 /* 29. Вывести имена, должности и ЗП всех специалистов по возрастанию */

SELECT employee_name, role_name, monthly_salary FROM employees
JOIN employee_salary  ON employee_salary.employee_id = employees.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
JOIN salary ON salary.id = employee_salary.salary_id 
ORDER BY employee_name, role_name, monthly_salary ASC 

 /* 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300 */

SELECT employee_name, role_name, monthly_salary FROM employees
JOIN employee_salary  ON employee_salary.employee_id = employees.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
JOIN salary ON salary.id = employee_salary.salary_id 
WHERE monthly_salary BETWEEN 1700 AND 2300
ORDER BY employee_name, role_name, monthly_salary ASC 

 /* 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300 */

SELECT employee_name, role_name, monthly_salary FROM employees
JOIN employee_salary  ON employee_salary.employee_id = employees.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
JOIN salary ON salary.id = employee_salary.salary_id 
WHERE monthly_salary < 2300
ORDER BY employee_name, role_name, monthly_salary ASC 

 /* 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000 */

SELECT employee_name, role_name, monthly_salary FROM employees
JOIN employee_salary  ON employee_salary.employee_id = employees.id 
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id 
JOIN roles ON roles.id = roles_employee.role_id 
JOIN salary ON salary.id = employee_salary.salary_id 
WHERE monthly_salary IN (1100, 1500, 2000)
ORDER BY employee_name, role_name, monthly_salary ASC 

