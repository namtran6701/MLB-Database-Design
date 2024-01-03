/* 1. The team owner passed away, and his son inherited the team, so we need to update the team owner name */

UPDATE teams
SET club_owner = 'George Steinbrenner'
WHERE team_id = 1;

/* 2. The player 2 got a contract renewal and we need to expand the serving period of time for him as well. */
UPDATE players
SET salary = 20000000, contract_end_date = '2023-12-31'
WHERE players_id = 2;
