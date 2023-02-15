-- Sub-query examples
select EMP_ID, F_NAME, L_NAME, SALARY 
	from employees
	where SALARY < 
		(select AVG(SALARY) from employees)	
	;

select EMP_ID, SALARY, (select AVG(SALARY) from employees) as AVG_SALARY 
	from employees
	;

Select * 
	from (select EMP_ID, F_NAME, L_NAME, DEP_ID from employees) AS EMP4ALL
	;

-- Multiple table query examples
select * 
	from EMPLOYEES 
	where DEP_ID IN (select DEPT_ID_DEP from DEPARTMENTS)
	;

select * 
	from EMPLOYEES
	where DEP_ID in 
		(select DEPT_ID_DEP from DEPARTMENTS where LOC_ID = 'L0002')
	;

select DEPT_ID_DEP, DEP_NAME
	from DEPARTMENTS
	where DEPT_ID_DEP in
		(select DEP_ID from EMPLOYEES where SALARY > 70000)	
	;

select * 
	from employees, departments 
	where employees.dep_ID = departments.dept_ID_dep
	;

select E.F_NAME, E.L_NAME, D.DEP_NAME 
	from EMPLOYEES E, DEPARTMENTS D
	where E.DEP_ID = D.DEPT_ID_DEP
	;

select E.F_NAME, E.L_NAME, D.DEP_NAME 
	from EMPLOYEES E, DEPARTMENTS D
	where E.DEP_ID = D.DEPT_ID_DEP and D.MANAGER_ID = 30002
	;
