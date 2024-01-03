#1 Who are the top 5 sponsors of the MLB and how much do they contribute to the league?

SELECT 
    sponsor_id,
    Sponsor_name,
    amount,
    ROUND((amount / (SELECT 
                    SUM(amount)
                FROM
                    sponsors
                GROUP BY season)) * 100,
            2) AS percentage_of_total_sponsor_amount
FROM
    sponsors
ORDER BY amount DESC
LIMIT 5;

# 2. What were the top 3 broadcasting platforms and the percent of viewership they have for the whole season?

SELECT 
    broadcasting_id,
    channel_name,
    total_view,
    ROUND((total_view / (SELECT 
                    SUM(total_view)
                FROM
                    broadcasting_platforms
                GROUP BY season)) * 100,
            2) AS percentage_of_total_viewship_for_season
FROM
    broadcasting_platforms
ORDER BY total_view DESC
LIMIT 3;

#3 What is the percentage change in attendance for MLB games from 2015-2023?

SELECT 
    fe_current.season AS Season,
    fe_current.average_attendance,
    ((fe_current.average_attendance - fe_previous.average_attendance) / fe_previous.average_attendance) * 100 AS percentage_change
FROM (
    SELECT 
        season,
      average_attendance
    FROM 
        fan_engagement
    WHERE 
        season BETWEEN 2014 AND 2023
) AS fe_current
JOIN (
    SELECT 
        season,
        average_attendance
    FROM 
        fan_engagement
    WHERE 
        season BETWEEN 2014 AND 2022
    GROUP BY 
        season
) AS fe_previous
ON 
    fe_current.season = fe_previous.season + 1
LIMIT 9;

    
#4 What are the top 3 players that have the highest combined social media following (Twitter + Instagram) in 2023? 

SELECT 
    CONCAT(p.first_name, ' ', p.last_name) AS player_name,
    (psm.twitter_followers + psm.instagram_followers) AS total_followers
FROM
    players_social_media AS psm
        JOIN
    players AS p ON psm.player_id = p.players_id
ORDER BY total_followers DESC
LIMIT 3;



#5 Top 3 most cost effective cost per click marketing platform

SELECT 
    platform, clicks / cost AS cost_per_click
FROM
    marketing
ORDER BY cost_per_click DESC
LIMIT 3;

#6 What are top 3 most expensive injury type?

SELECT 
    injury_type,
    SUM(treatmeant_cost) AS total_cost
FROM injured_players
GROUP BY injury_type
ORDER BY total_cost DESC
LIMIT 3;


