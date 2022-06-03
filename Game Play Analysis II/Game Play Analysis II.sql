
select a.player_id, a.device_id from activity a inner join
(select player_id, min(event_date) as event_date from activity group by player_id) ga
on a.player_id = ga.player_id and a.event_date=ga.event_date;


select a.player_id, a.device_id from activity a where (player_id, event_date) in
(select player_id, min(event_date) as event_date from activity group by player_id);