(select employee_id from salaries s minus select employee_id from employees e )
union
(select employee_id from employees e minus select employee_id from salaries s)

