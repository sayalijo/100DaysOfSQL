WITH cte_100people AS(
	SELECT
		id,
        visit_date,
        LAG(people,2) OVER (ORDER BY id) twodaysprior,
        LAG(people,1) OVER (ORDER BY id) onedayprior,
        people as sameday,
        LEAD(people,1) OVER (ORDER BY id) nextday,
        LEAD(people,2) OVER (ORDER BY id) twodaysahead
	FROM
		Stadium
)
SELECT
	id,
	visit_date,
    sameday as people
FROM
	cte_100people
WHERE
    (onedayprior>=100 AND sameday>=100 AND nextday>=100)
    OR
    (twodaysprior>=100 AND onedayprior>=100 AND sameday>=100)
    OR
    (sameday>=100 AND nextday>=100 AND twodaysahead>=100);