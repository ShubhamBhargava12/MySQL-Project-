create database anshika;
use anshika;
select*from Cricket_data1 limit 5;
 update cricket_data1 set Start_date=STR_TO_DATE(start_date,"%d-%m-%Y");
update cricket_data1 set end_date=STR_TO_DATE(end_date,"%d-%m-%Y");
update cricket_data1 set Start_date=left(Start_date,10);
update cricket_data1 set end_date=left(end_date,10);
ALTER TABLE CRICKET_DATA1 MODIFY START_DATE date;


SELECT COUNT(*) AS total_matches from cricket_data1;


SELECT season,COUNT(*) AS total_mactches from cricket_data1 group by season order by season;

SELECT WINNER, COUNT(*) AS wins 
from cricket_data1 
Group by winner 
order by wins 
desc limit 10;



select winner, count(*) as wins 
from cricket_data1 Group by winner
order by wins desc limit 5



SELECT COUNT(*) AS toss_and_winner from cricket_data1 where toss_won= winner;



SELECT decision, COUNT(*) AS total
from cricket_data1 
Group by decision;

SELECT MAX(first_inning_score) AS highest_score from cricket_data1;

SELECT Min(first_inning_score) AS lowest_score from cricket_data1;
SELECT MAX(second_inning_score) AS highest_score from cricket_data1;
SELECT pom, COUNT(*) AS awards
from cricket_data1 group by pom order by awards desc limit 1;
SELECT pom, COUNT(*) AS awards
from cricket_data1 group by pom order by awards desc limit 5;
SELECT home_team, count(*) AS home_matches
from cricket_data1 group by home_team;
SELECT away_team, count(*) as away_matches
from cricket_data1 group by away_team;
select venue_name, count(*) as matches 
from cricket_data1 group by venue_name order by matches Desc limit 3;

select count(*) as chasing_wins 
from cricket_data1 
where second_inning_score> first_inning_score;

select count(*) as defended_wins
from Cricket_data1
where second_inning_score> first_inning_score;

select season,winner, count(*) as wins
from Cricket_data1 group by season, winner
order by season, wins desc;

select toss_won, count(*) as toss_wins
from cricket_data1 group by toss_won 
order by toss_wins desc limit 1;

select avg(first_inning_score) as avg_fist,
avg(second_inning_score) as avg_second from cricket_data1;

select* from cricket_data1 where
ABS(first_inning_score-second_inning_score)<10 LIMIT 10;
 
 SELECT winner, COUNT(*)*100.0/(select count(*) from cricket_data1) as win_percentage
 from cricket_data1 group by winner order by win_percentage desc;