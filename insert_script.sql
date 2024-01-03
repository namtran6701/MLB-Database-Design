USE db_project;
SET foreign_key_checks = 0;

-- Insert into Teams table
INSERT INTO teams (team_id, team_name, conference, city, founded_year, club_owner, stadium_id) VALUES
(1, 'New York Yankees', 'American League', 'New York', 1901, 'Hal Steinbrenner', 1),
(2, 'Boston Red Sox', 'American League', 'Boston', 1901, 'John Henry', 2),
(3, 'Los Angeles Dodgers', 'National League', 'Los Angeles', 1883, 'Mark Walter', 3),
(4, 'San Francisco Giants', 'National League', 'San Francisco', 1883, 'Charles Bartlett Johnson', 4),
(5, 'St. Louis Cardinals', 'National League', 'St. Louis', 1882, 'Bill DeWitt', 5),
(6, 'Chicago Cubs', 'National League', 'Chicago', 1870, 'The Ricketts Family', 6),
(7, 'Philadelphia Phillies', 'National League', 'Philadelphia', 1883, 'John Middleton', 7),
(8, 'Atlanta Braves', 'National League', 'Atlanta', 1871, 'Liberty Media', 8),
(9, 'Houston Astros', 'American League', 'Houston', 1962, 'Jim Crane', 9),
(10, 'Oakland Athletics', 'American League', 'Oakland', 1901, 'John Fisher', 10);

-- Insert into Players table
INSERT INTO players (players_id, team_id, last_name, first_name, play_position, age, years_pro, salary, nationality, contract_start_date, contract_end_date) VALUES
(1, 1, 'Judge', 'Aaron', 'Outfielder', 29, 5, 10000000, 'US', '2017-04-02', '2023-12-31'),
(2, 2, 'Martinez', 'J.D.', 'Designated Hitter', 33, 9, 19000000, 'US', '2018-02-26', '2022-12-31'),
(3, 3, 'Betts', 'Mookie', 'Outfielder', 28, 7, 27000000, 'US', '2020-07-22', '2031-12-31'),
(4, 4, 'Posey', 'Buster', 'Catcher', 34, 12, 22000000, 'US', '2010-05-29', '2022-12-31'),
(5, 5, 'Goldschmidt', 'Paul', 'First Base', 33, 10, 26000000, 'US', '2019-03-21', '2024-12-31'),
(6, 6, 'Rizzo', 'Anthony', 'First Base', 32, 10, 16000000, 'US', '2012-06-26', '2022-12-31'),
(7, 7, 'Harper', 'Bryce', 'Outfielder', 28, 9, 27000000, 'US', '2019-03-02', '2031-12-31'),
(8, 8, 'Acuna Jr.', 'Ronald', 'Outfielder', 23, 3, 1000000, 'VE', '2018-04-25', '2027-12-31'),
(9, 9, 'Altuve', 'Jose', 'Second Base', 31, 10, 29000000, 'VE', '2011-07-20', '2024-12-31'),
(10, 10, 'Olson', 'Matt', 'First Base', 27, 5, 5000000, 'US', '2016-09-12', '2023-12-31');

-- Insert into Employees table
INSERT INTO employees (employee_id, department_id, last_name, first_name, job_position, age, years_employed, salary) VALUES
(1, 1, 'Smith', 'John', 'Manager', 45, 20, 120000),
(2, 1, 'Johnson', 'Emily', 'HR Specialist', 30, 5, 90000),
(3, 2, 'Williams', 'Mark', 'Software Engineer', 40, 10, 110000),
(4, 2, 'Brown', 'Sarah', 'Data Analyst', 35, 8, 95000),
(5, 3, 'Davis', 'Michael', 'Financial Advisor', 50, 25, 130000),
(6, 3, 'Miller', 'Jessica', 'Accountant', 28, 4, 80000),
(7, 4, 'Wilson', 'Daniel', 'Marketing Manager', 37, 12, 105000),
(8, 4, 'Anderson', 'Karen', 'SEO Specialist', 32, 7, 90000),
(9, 5, 'Thomas', 'Brian', 'Logistics Coordinator', 42, 15, 98000),
(10, 5, 'Taylor', 'Laura', 'Supply Chain Manager', 39, 14, 115000);

-- Insert into Departments table
INSERT INTO departments (department_id, department_name, budget) VALUES
(1, 'Human Resources', 500000),
(2, 'Information Technology', 600000),
(3, 'Finance', 700000),
(4, 'Marketing', 550000),
(5, 'Logistics', 400000),
(6, 'Sales', 650000),
(7, 'Research and Development', 750000),
(8, 'Customer Service', 420000),
(9, 'Quality Assurance', 300000),
(10, 'Legal', 480000);

-- Insert into stadium table
INSERT INTO stadium (stadium_name, city, state, capacity, age, team_owner) VALUES
('Yankee Stadium', 'New York', 'NY', 54791, 14, 1),
('Fenway Park', 'Boston', 'MA', 37755, 111, 2),
('Dodger Stadium', 'Los Angeles', 'CA', 56000, 61, 3),
('Oracle Park', 'San Francisco', 'CA', 41915, 23, 4),
('Busch Stadium', 'St. Louis', 'MO', 45494, 17, 5),
('Wrigley Field', 'Chicago', 'IL', 41649, 109, 6),
('Citizens Bank Park', 'Philadelphia', 'PA', 42792, 19, 7),
('Truist Park', 'Atlanta', 'GA', 41084, 6, 8),
('Minute Maid Park', 'Houston', 'TX', 41168, 23, 9),
('Oakland Coliseum', 'Oakland', 'CA', 46857, 57, 10);

-- Insert into team_statistics table
INSERT INTO team_statistics (team_id, season_year, wins, losses, game_ties, points_for, points_against, profit, avg_ticket_sales, avg_viewship) VALUES
(1, 2023, 95, 67, 0, 820, 700, 5000000, 40000, 2000000),
(2, 2023, 89, 73, 0, 800, 720, 4500000, 38000, 1900000),
(3, 2023, 92, 70, 0, 810, 710, 4800000, 39000, 1950000),
(4, 2023, 88, 74, 0, 790, 730, 4300000, 37000, 1850000),
(5, 2023, 90, 72, 0, 805, 715, 4600000, 38500, 1925000),
(6, 2023, 87, 75, 0, 795, 735, 4200000, 36500, 1825000),
(7, 2023, 91, 71, 0, 815, 705, 4700000, 38750, 1937500),
(8, 2023, 85, 77, 0, 780, 750, 4100000, 36000, 1800000),
(9, 2023, 93, 69, 0, 825, 695, 4900000, 39000, 1950000),
(10, 2023, 86, 76, 0, 785, 745, 4150000, 36250, 1812500);

-- Insert into schedules table
INSERT INTO schedules (match_date, home_team_id, away_team_id, stadium_id, broadcasting_id) VALUES
('2023-04-01', 1, 2, 1, 1),
('2023-04-02', 2, 1, 2, 2),
('2023-04-03', 3, 4, 3, 3),
('2023-04-04', 4, 3, 4, 4),
('2023-04-05', 5, 6, 5, 5),
('2023-04-06', 6, 5, 6, 6),
('2023-04-07', 7, 8, 7, 7),
('2023-04-08', 8, 7, 8, 8),
('2023-04-09', 9, 10, 9, 9),
('2023-04-10', 10, 9, 10, 10);

-- Insert into broadcasting_platforms table
INSERT INTO broadcasting_platforms (channel_name, season, total_view) VALUES
('ESPN', 2023, 5000000),
('FOX Sports', 2023, 4800000),
('CBS Sports', 2023, 4600000),
('NBC Sports', 2023, 4500000),
('MLB Network', 2023, 4200000),
('TBS', 2023, 4000000),
('TNT', 2023, 3900000),
('ABC', 2023, 3800000),
('YouTube TV', 2023, 3600000),
('Amazon Prime', 2023, 3500000);

-- Insert into sponsors table
INSERT INTO sponsors (sponsor_name, phone_number, email_address, season, amount) VALUES
('Nike', '123-456-7890', 'nike@example.com', 2023, 5000000.00),
('Adidas', '321-654-0987', 'adidas@example.com', 2023, 4000000.00),
('Coca-Cola', '213-564-8970', 'cocacola@example.com', 2023, 3500000.00),
('Pepsi', '132-465-7980', 'pepsi@example.com', 2023, 3400000.00),
('Microsoft', '312-645-7890', 'microsoft@example.com', 2023, 6000000.00),
('Apple', '231-654-8709', 'apple@example.com', 2023, 5500000.00),
('Amazon', '123-645-8790', 'amazon@example.com', 2023, 7000000.00),
('Samsung', '321-456-9870', 'samsung@example.com', 2023, 4800000.00),
('Google', '213-546-9087', 'google@example.com', 2023, 5200000.00),
('Sony', '132-654-7890', 'sony@example.com', 2023, 4500000.00);

-- Insert into league_financials table
INSERT INTO league_financials (season, revenue, cost) VALUES
(2014, 400000000, 200000000),
(2015, 420000000, 210000000),
(2016, 450000000, 225000000),
(2017, 460000000, 230000000),
(2018, 480000000, 240000000),
(2019, 500000000, 250000000),
(2020, 300000000, 200000000),  -- Reduced due to pandemic
(2021, 520000000, 260000000),
(2022, 540000000, 270000000),
(2023, 560000000, 280000000);

-- Insert into ticket_sales table
INSERT INTO ticket_sales (match_id, ticket_price, tickets_sold) VALUES
(1, 50, 40000),
(2, 55, 38000),
(3, 60, 39000),
(4, 52, 37500),
(5, 58, 38500),
(6, 54, 37000),
(7, 57, 40000),
(8, 53, 39000),
(9, 59, 38000),
(10, 56, 39500);

-- Insert into marketing table
INSERT INTO marketing (campaign_type, platform, clicks, cost, season) VALUES
('Social Media', 'Facebook', 5000, 2000.00, 2023),
('Social Media', 'Instagram', 6000, 2200.00, 2023),
('Search Engine', 'Google', 7000, 3000.00, 2023),
('Search Engine', 'Bing', 2000, 1000.00, 2023),
('Email', 'Newsletter', 3000, 500.00, 2023),
('TV', 'ESPN', 0, 5000.00, 2023),
('TV', 'FOX', 0, 4800.00, 2023),
('Radio', 'Local Station', 0, 700.00, 2023),
('Print', 'Magazine', 0, 400.00, 2023),
('Print', 'Newspaper', 0, 600.00, 2023);

-- Insert into fan_engagement table
INSERT INTO fan_engagement (season, social_mentions, average_attendance) VALUES
(2014, 20000, 30000),
(2015, 22000, 31000),
(2016, 24000, 32000),
(2017, 26000, 33000),
(2018, 28000, 34000),
(2019, 30000, 35000),
(2020, 18000, 15000),  -- Reduced due to pandemic
(2021, 29000, 34500),
(2022, 31000, 35500),
(2023, 32000, 36000);

-- Insert into players_social_media table
INSERT INTO players_social_media (player_id, twitter_followers, instagram_followers) VALUES
(1, 50000, 60000),
(2, 45000, 55000),
(3, 47000, 57000),
(4, 43000, 52000),
(5, 46000, 56000),
(6, 42000, 51000),
(7, 48000, 58000),
(8, 41000, 50000),
(9, 49000, 59000),
(10, 40000, 49000);

-- Insert into injured_players table
INSERT INTO injured_players (player_id, injury_type, injury_status, treatmeant_cost, injured_date, estimated_date_out) VALUES
(1, 'Knee Injury', 'active', 5000.00, '2023-04-01', '2023-06-01'),
(2, 'Ankle Sprain', 'resolved', 2000.00, '2023-03-15', '2023-04-15'),
(3, 'Concussion', 'active', 3000.00, '2023-04-10', '2023-05-10'),
(4, 'Shoulder Injury', 'resolved', 4000.00, '2023-03-20', '2023-04-20'),
(5, 'Fractured Arm', 'active', 6000.00, '2023-04-05', '2023-07-05'),
(6, 'Back Strain', 'resolved', 1500.00, '2023-03-10', '2023-04-10'),
(7, 'Elbow Injury', 'active', 3500.00, '2023-04-12', '2023-06-12'),
(8, 'Hamstring Pull', 'resolved', 2500.00, '2023-03-18', '2023-04-18'),
(9, 'Groin Strain', 'active', 2200.00, '2023-04-08', '2023-05-08'),
(10, 'Calf Strain', 'resolved', 1800.00, '2023-03-22', '2023-04-22');

SET foreign_key_checks = 1;
