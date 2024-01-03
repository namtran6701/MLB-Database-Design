# 1. Coca-cola has decided to terminate their sponsorship with the MLB

DELETE FROM sponsors 
WHERE
    sponsor_id = 3;

# This code removes coca-cola from the sponsors list affecting the total percentage for our top 3 sponsors query

# 2. Match 8 of this season is cancelled due to bad weather forecasts 

DELETE FROM schedules 
WHERE
    match_id = 8;

# This code removes match 8 from the schedules list and would then affect the ticket sales for that match. 

