BULK INSERT injuries_impact
    FROM 'Output/Injury_Count.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
    )
BULK INSERT injuries_impact
    FROM 'Output/NBA_Team_Stats.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',   
    TABLOCK
    )

drop table injuries_impact

create table injuries_impact (
    Team Season varchar (60), 
    Injuries int,
    Win Pct decimal(10,10),  
    Points float,
    Fieldgoal % decimal (10,10),
    Freethrow % decimal (10,10),
    Peronal Fouls +/ float;

Select * From injuries_impact
