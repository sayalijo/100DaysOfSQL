select w.id from weather w join weather w1
on datediff(w.recordDate, w1.recordDate) = 1
and w.Temperature > w1.Temperature;