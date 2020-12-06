
BULK INSERT nba_team_stats
    FROM 'Output/Injury_Count.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
    );
​
BULK INSERT injuries_count
    FROM 'Output/NBA_Team_Stats.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',   
    TABLOCK
    );
​
drop table nba_team_stats
​
create table nba_team_stats (
    Team Season varchar, 
    Injuries int,
    Win Pct decimal,  
    Points float,
    Fieldgoal % decimal,
    Freethrow % decimal,
    Peronal Fouls +/ float;
​
Select * From injuries_impact
;
drop table injuries_count
​
create table injuries_count (
    team_season varchar, 
    nubmer_of_injuries int,
    
​
Select * From injuries_count
;