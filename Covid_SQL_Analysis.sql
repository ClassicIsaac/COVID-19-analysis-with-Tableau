DROP TABLE CovidDeaths;
DROP TABLE CovidTests;

CREATE TABLE CovidDeaths (
iso_code VARCHAR(10),
continent VARCHAR(20),
location VARCHAR(50),
date  DATE,
population BIGINT,
total_cases BIGINT,
new_cases BIGINT,
total_deaths BIGINT,
new_deaths BIGINT,
PRIMARY KEY(iso_code,date));


CREATE TABLE CovidTests (
iso_code VARCHAR(10),
continent VARCHAR(20),
location VARCHAR(50),
date  DATE,
new_tests BIGINT,
total_tests BIGINT,
PRIMARY KEY(iso_code,date));


-- \copy CovidDeaths FROM '/Users/ORESANYA/Classic Isaac/Git/COVID-19-analysis-with-Tableau/CovidDeaths.csv' WITH (FORMAT CSV,HEADER);
-- \copy CovidTests FROM '/Users/ORESANYA/Classic Isaac/Git/COVID-19-analysis-with-Tableau/CovidTests.csv' WITH (FORMAT CSV,HEADER);

SELECT * FROM CovidDeaths WHERE location='United States';
SELECT * FROM CovidTests;
SELECT *
FROM CovidDeaths cd JOIN CovidTests cv
ON cd.location=cv.location AND cd.date=cv.date
WHERE cd.location='United States'
ORDER BY cd.date;

CREATE INDEX deaths_loc_idx ON CovidDeaths(location);
CREATE INDEX vaccinations_loc_idx ON CovidTests(location);

-- INCIDENCE RATE
-- total COVID cases compared to the population
SELECT location,date,population,total_cases,(CAST(total_cases AS numeric)/population)*100 cummulative_cases_per_population
FROM CovidDeaths
WHERE location='United States'
ORDER BY date;

-- MORTALITY RATE
-- This metric measures the proportion of people who die as a result of being infected with COVID-19
SELECT location,date,population,total_deaths,(CAST(total_deaths AS numeric)/population)*100 mortality_rate
FROM CovidDeaths
WHERE location='United States'
ORDER BY date;


-- INFECTION FATALITY RATE
-- This metric measures the proportion of deaths among all individuals who are infected with COVID-19 
SELECT location,date,total_cases,total_deaths,(CAST(total_deaths AS numeric)/total_cases)*100 infection_fatality_rate
FROM CovidDeaths
WHERE location='United States'
ORDER BY date;

-- TESTING RATE
-- This metric measures the number of COVID-19 tests conducted per capita
SELECT cd.location,cd.date,cd.population,cv.total_tests,(CAST(cv.total_tests AS numeric)/cd.population)*100 testing_rate
FROM CovidDeaths cd JOIN CovidTests cv
ON cd.location=cv.location AND cd.date=cv.date
WHERE cd.location='United States'
ORDER BY cd.date;

-- TOP 10 DAYS WITH HIGHEST NUMBER OF NEW COVID-19 CASES
SELECT location,date,new_cases
FROM CovidDeaths
WHERE location='United States'
ORDER BY new_cases DESC
LIMIT 10;

-- MORTALITY RATE PER 100,000
-- This metric measures the nmber of COVID-19 dedaths per 100,000 people
SELECT location,date,population,total_deaths,(CAST(total_deaths AS numeric)/population)*100000 mortality_rate_per_100000
FROM CovidDeaths
WHERE location='United States'
ORDER BY date;

-- TOTAL DEATH FOR EACH LOCATION
SELECT location,MAX(total_deaths) max_total_deaths
FROM CovidDeaths
GROUP BY location
ORDER BY max_total_deaths DESC
