with ctl as (select team_id, count(*) as team_size from employee group by team_id)
select e.employee_id, ctl.team_size from ctl inner join employee e on
ctl.team_id = e.team_id;

select Em.employee_id, team_size from
(select e.team_id, count(e.team_id) as team_size
from Employee e
group by e.team_id) D
join Employee Em
on D.team_id = Em.team_id;