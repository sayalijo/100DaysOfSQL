select Department, Employee, Salary from
(select e.name Employee, e.salary salary, d.name Department,
    rank() over (partition by departmentid order by salary desc) rk
    from Employee e join department d on e.departmentid = d.id)
    where rk = 1 ;


