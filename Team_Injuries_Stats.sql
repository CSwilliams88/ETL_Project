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
