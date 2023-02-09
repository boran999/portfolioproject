
-- please note that the information below is made up and not true
-- this is just a sql project


create table if not exists HeartAttack(
location varchar(40) not null auto_increment,
date varchar(30) not null,
death int(10) not null,
case int(12) not null,
population int(12) not null,
primary key (location)
); 


insert into HeartAttack (location, date, death, case, population) values
(US, (`05.07.2005`), 2541086, 30000000, 320000000),
(Uk, `05.07.2005`, 2541, 5000000, 67000000),
(Japan, `05.07.2005`, 2541, 542000, 65000000),
(Brazil, `05.07.2005`, 2541, 30454200, 101000000),
(Turkey, `05.07.2005`, 142000, 1527320, 85000000),
(Canada, `05.07.2005`, 132453, 30000000, 44000000),
(Germany, `05.07.2005`, 2541000, 30043530, 32000000),
(France, `05.07.2005`, 1254541, 35283000, 320000000),



create table if not exists Cancer(
location varchar(40) not null auto_increment,
date varchar(30) not null,
death int(10) not null,
case int(12) not null,
population int(12) not null,
new_case varchar(20),
primary key (location)
); 


-- these are the possible ways to use the information:




select (death/case)*100 as DeathPercentage
from HeartAttack

------------------------------------------------------------

select (case/population)*100 as %OfCitizensHaveHeartProblems
from HeartAttack


------------------------------------------------------------

select location, max(case) as HighestCase
from HeartAttack
group by location
order by max(case) desc
limit 1;

------------------------------------------------------------

select location, max(death) as HighestDeath
from HeartAttack
group by location
order by max(case) desc;


Alter table HeartAttack
add Continent varchar(30);


select * from HeartAttack
join Cancer on Cancer.date = HeartAttack.date
and Cancer.case = HeartAttack.case
where HeartAttack.case > avg(HeartAttack.case) and location = US
and Cancer.case <= avg(Cancer.case);


drop table if exists #name
Create table #name (
continent nvarchar(40),
location nvarchar(50),
date datetime,
population numeric,
Newinfections nvarchar(50),
PeopleInfected int(15)
)

insert into #name
select cancer.location, cancer.date, cancer.death
















