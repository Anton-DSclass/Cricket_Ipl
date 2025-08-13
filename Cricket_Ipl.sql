SELECT * FROM Cricket_Test.deliveries;

USE Cricket_Ipl;



#01-Total Matches Played by Season

SELECT season, COUNT(*) AS total_matches
FROM Cricket_Ipl.match_info
GROUP BY season
ORDER BY season;



#02-Top 10 Players of the Match Winners

SELECT player_of_match, COUNT(*) AS awards
FROM Cricket_Ipl.match_info
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 10;

#03-Matches Won by Each Team

SELECT winner, COUNT(*) AS wins
FROM Cricket_Ipl.match_info
GROUP BY winner
ORDER BY wins DESC;

#04-Matches by Venue

SELECT venue, COUNT(*) AS matches_count
FROM Cricket_Ipl.match_info
GROUP BY venue
ORDER BY matches_count DESC;


#05-Toss Decision Analysis

SELECT toss_decision, COUNT(*) AS count
FROM Cricket_Ipl.match_info
GROUP BY toss_decision;


#06-City-wise Match Count

SELECT city, COUNT(*) AS matches
FROM Cricket_Ipl.match_info
GROUP BY city
ORDER BY matches DESC;

#07-Season-wise Toss Winners

SELECT season, toss_winner, COUNT(*) AS toss_wins
FROM Cricket_Ipl.match_info
GROUP BY season, toss_winner
ORDER BY season, toss_wins DESC;

#08-Win by Runs Distribution

SELECT win_by_runs, COUNT(*) AS matches
FROM Cricket_Ipl.match_info
GROUP BY win_by_runs
ORDER BY win_by_runs DESC;

#09-Teams Winning Batting First vs Bowling First

SELECT toss_decision, winner, COUNT(*) AS wins
FROM Cricket_Ipl.match_info
GROUP BY toss_decision, winner
ORDER BY wins DESC;


#10-Most Successful Teams in Finals

SELECT winner, COUNT(*) AS final_wins
FROM Cricket_Ipl.match_info
WHERE match_type = 'Final'
GROUP BY winner
ORDER BY final_wins DESC;
















