## Kontrolonis nr. 1
1. `SELECT * FROM project ORDER BY project_name;`
2. `SELECT c_first_name, c_last_name FROM client WHERE c_last_name = 'Smith';`
3. `SELECT * FROM client WHERE c_city = 'Midtown';`
4. `SELECT ename, round(sal*1.07) FROM emp WHERE deptno = 20;`
5. `SELECT 'Projektas "' || INITCAP(project_name) || '" vykdomas nuo ' || EXTRACT(year FROM project_start_date) || ' metų iki ' || EXTRACT(year FROM project_finish_date) || ' metų.' FROM project;`
6. `SELECT max( budget ) FROM project;`
7. `SELECT project_name , budget FROM project WHERE project_finish_date <= current_date AND MONTHS_BETWEEN(project_start_date, project_finish_date) < 4;`
8. `SELECT deptno, MIN(sal) FROM emp WHERE upper(job) = 'MANAGER' GROUP BY deptno;`
9. `SELECT empno, ename, p.project_name, p.project_start_date FROM emp INNER JOIN project p ON empno = p.manager_id WHERE project_start_date <= current_date AND project_finish_date > current_date;`
10. `SELECT project_id, project_name, e.ename, c.c_last_name FROM project p INNER JOIN emp e ON p.manager_id = e.empno INNER JOIN client c ON p.client_id = c.client_id WHERE p.budget >= 50000 ORDER BY p.project_name;`
