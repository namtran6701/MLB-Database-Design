# This script is used for creating tables in our database structure 
USE db_project;
SET foreign_key_checks = 0;
# I. Team and personnel 
/* This category focuses on the core entities that make up the team and the league */

## 1. Table for players in the league

DROP TABLE IF EXISTS players;
CREATE TABLE players (
    players_id INT NOT NULL AUTO_INCREMENT,
    team_id INT NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    play_position VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    years_pro INT NOT NULL,
    salary decimal(10, 2) not null,
    nationality VARCHAR(30),
    contract_start_date DATE NOT NULL,
    contract_end_date DATE NOT NULL,
    PRIMARY KEY (players_id),
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

## 2. Table for staffs/employees working for the league 
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT NOT NULL AUTO_INCREMENT,
    department_id INT NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    job_position VARCHAR(35) NOT NULL,
    age INT NOT NULL,
    years_employed INT NOT NULL,
    salary decimal(10, 2) not null,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)

);

## 3. Table for Deparment 
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR(35) NOT NULL,
    budget INT,
    PRIMARY KEY (department_id)
);

## 4. Table for teams in the league 
DROP TABLE IF EXISTS teams;
CREATE TABLE teams (
    team_id INT NOT NULL AUTO_INCREMENT,
    team_name VARCHAR(35) NOT NULL,
    conference VARCHAR(35) NOT NULL,
    city VARCHAR(35) NOT NULL,
    founded_year int, 
    club_owner VARCHAR(35), 
    stadium_id INT NOT NULL,
    PRIMARY KEY (team_id),
    FOREIGN KEY (stadium_id) REFERENCES stadium(stadium_id)
);

# II. Performance and Scheduling

## 5. Table for team's statistics 

DROP TABLE IF EXISTS team_statistics;
CREATE TABLE team_statistics (
    team_id INT NOT NULL,
    season_year INT NOT NULL,
    wins INT,
    losses INT ,
    game_ties INT,
    points_for INT,
    points_against INT,
    profit INT, 
    avg_ticket_sales int,
    avg_viewship int, 
    PRIMARY KEY (team_id, season_year),
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

## 6. Table for schedule of games
DROP TABLE IF EXISTS schedules;
CREATE TABLE schedules (
    match_id INT NOT NULL AUTO_INCREMENT,
    match_date DATE NOT NULL,
    home_team_id INT NOT NULL,
    away_team_id INT NOT NULL,
    stadium_id INT NOT NULL,
    broadcasting_id INT NOT NULL,
    PRIMARY KEY (match_id),
	FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
    FOREIGN KEY (away_team_id) REFERENCES teams(team_id),
    FOREIGN KEY (stadium_id) REFERENCES stadium(stadium_id),
    FOREIGN KEY (broadcasting_id) REFERENCES broadcasting_platforms(broadcasting_id)
);

# III. Broadcasting 

## 7. Table for broadcasting_platform details 
DROP TABLE IF EXISTS broadcasting_platforms;
CREATE TABLE broadcasting_platforms (
    broadcasting_id INT NOT NULL AUTO_INCREMENT,
    channel_name VARCHAR(35) NOT NULL,
    season YEAR NOT NULL, 
    total_view INT NOT NULL, 
    PRIMARY KEY (broadcasting_id)
);
    
# III. Financials and Sponsorships

## 8. Table for sponsor deals

DROP TABLE IF EXISTS sponsors;
CREATE TABLE sponsors (
    sponsor_id INT NOT NULL AUTO_INCREMENT,
    sponsor_name VARCHAR(35) NOT NULL,
    phone_number VARCHAR(15),
    email_address VARCHAR(35),
    season INT NOT NULL, 
    amount DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (sponsor_id)
);

## 9. Table for the financial health of the league 

DROP TABLE IF EXISTS league_financials;
CREATE TABLE league_financials(
	season year(4),
    revenue int not null,
    cost int not null, 
    PRIMARY KEY (season)
    );

## 10. Table for the number of ticket sales per match
DROP TABLE IF EXISTS ticket_sales;
CREATE TABLE ticket_sales (
    match_id INT NOT NULL,
    ticket_price INT NOT NULL, 
    tickets_sold INT,
    PRIMARY KEY (match_id),
    FOREIGN KEY (match_id) REFERENCES schedules(match_id)
);
    
# IV. Facilities

## 11. Table for stadium of each team in the league 
DROP TABLE IF EXISTS stadium;
CREATE TABLE stadium (
    stadium_id INT NOT NULL AUTO_INCREMENT,
    stadium_name VARCHAR(35) NOT NULL,
    city VARCHAR(35) NOT NULL,
    state VARCHAR(35) NOT NULL,
    capacity INT NOT NULL,
    age INT NOT NULL,
    team_owner INT NOT NULL,
    PRIMARY KEY (stadium_id),
    FOREIGN KEY (team_owner) REFERENCES teams(team_id)
);
    
# V. Marketing and Engagement

## 12. Table for marketing campaign 
DROP TABLE IF EXISTS marketing;
CREATE TABLE marketing (
    campaign_id INT NOT NULL AUTO_INCREMENT,
    campaign_type VARCHAR(20) NOT NULL,
    platform varchar(35),
    clicks int, 
    cost DECIMAL(10 , 2 ),
    season year not null, 
    PRIMARY KEY (campaign_id)
);

## 13. table to measure fan engagement 
DROP TABLE IF EXISTS fan_engagement;
CREATE TABLE fan_engagement (
    season INT NOT NULL,
    social_mentions INT,
    average_attendance INT,
    PRIMARY KEY (season)
);

## 14. Table to keep track of player's social media
DROP TABLE IF EXISTS players_social_media;
CREATE TABLE players_social_media (
    player_id INT NOT NULL,
    twitter_followers INT,
    instagram_followers INT,
    PRIMARY KEY (player_id),
    FOREIGN KEY (player_id) REFERENCES players(players_id)
);

# VI. Health and safety 

## 15. Table to keep track of injured players
DROP TABLE IF EXISTS injured_players;
CREATE TABLE injured_players (
    injured_id INT NOT NULL AUTO_INCREMENT,
    player_id INT NOT NULL,
    injury_type VARCHAR(35) NOT NULL,
    injury_status ENUM('active', 'resolved'),
    treatmeant_cost DECIMAL(10 , 2) NOT NULL,
    injured_date DATE NOT NULL, 
    estimated_date_out DATE NOT NULL,
    PRIMARY KEY (injured_id),
    FOREIGN KEY (player_id) REFERENCES players(players_id)
);

SET foreign_key_checks = 1;

    
    
    
    
    
	


    
    
    
	

