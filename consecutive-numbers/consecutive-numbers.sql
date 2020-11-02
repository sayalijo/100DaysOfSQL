SELECT distinct Num as ConsecutiveNums
FROM (
    SELECT Id, Num
        , lead(ID, 2, -1) OVER (PARTITION BY Num ORDER BY id) AS id2
    FROM Logs
) a
WHERE a.id2 = a.id + 2; <--- faster


select distinct l1.num ConsecutiveNums from logs l1, logs l2, logs l3
where l1.id = l2.id -1 and l2.id = l3.id -1
and l1.num = l2.num and l2.num = l3.num;



