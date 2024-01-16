create schema cars;
select * from cars.car_dekho;
use cars;

----READ DATA-----

select * from car_dekho;

----COUNT OF (TOTAL CAR) RECORDS -----

select count(*) from car_dekho;

----- how many cars will be avilable in 2023 -----------

select count(*)from car_dekho where year=2023;

---------how many cars will be avilable in 2020-2021-2022----

select count(*)from car_dekho where year=2020; 

select count(*)from car_dekho where year=2021; 

select count(*)from car_dekho where year=2022; 

-------GROUP BY ---can  also get the data at single time of three years using Group by 

select count(*)from car_dekho where year in (2020,2021,2022)group by year ;

---TOTAL OF ALL CARS BY YEAR ----

select year, count(*)from car_dekho group by year;

-- HOW MANY DIESEL CARS WILL BE AVILABLE  in 2020---

select count(*) from car_dekho where year=2020 and fuel = "Diesel";

- HOW MANY Petrol CARS WILL BE AVILABLE  in 2020---

select count(*) from car_dekho where year=2020 and fuel="petrol"; 

--COUNT OF ALL THE FUEL CARS (petrol, diesel,and CNG)come by all years --

select year, count(*) from car_dekho where fuel="petrol"group by year;
select year,count(*) from car_dekho where fuel="diesel" group by year;
select year,count(*) from car_dekho where fuel="CNG" group by year;

---THERE WERE MORE THAN 100 cars IN A GIVEN YEAR, which year had more than 100 cars--

select year,count(*) from car_dekho  group by year having count(*)>100;

select year,count(*) from car_dekho  group by year having count(*)<100;

--COUNT OF CAR DETAILS between 2015 and 2023 ---

select count(*) from car_dekho where year between 2015 and 2023 ;

--ALL CAR DETAILS between 2015 and 2023 -

select*from car_dekho where year between 2015 and 2023;