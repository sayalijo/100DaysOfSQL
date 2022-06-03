SELECT name FROM customer WHERE referee_id is NULL OR referee_id <> 2;



MySQL uses three-valued logic -- TRUE, FALSE and UNKNOWN. Anything compared to NULL evaluates to the
third value: UNKNOWN. That “anything” includes NULL itself! That’s why MySQL provides the
IS NULL and IS NOT NULL operators to specifically check for NULL.

Thus, one more condition 'referee_id IS NULL' should be added to the WHERE clause as below.

