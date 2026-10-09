-- Insurance Portfolio Project
-- Step 1: Create and select the database

CREATE DATABASE insurance_project;

USE insurance_project;

SELECT DATABASE();

-- Step 2: Create the insurance table

CREATE TABLE insurance (
    age INT,
    sex VARCHAR(10),
    bmi DECIMAL(5,2),
    children INT,
    smoker VARCHAR(5),
    region VARCHAR(20),
    charges DECIMAL(10,2),
    age_group VARCHAR(10),
    bmi_category VARCHAR(20)
);

SHOW TABLES;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 26.7/Uploads/insurance_clean.csv'
INTO TABLE insurance
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    age,
    sex,
    bmi,
    children,
    smoker,
    region,
    charges,
    age_group,
    bmi_category
);

SELECT COUNT(*) AS total_rows
FROM insurance;

SELECT *
FROM insurance
LIMIT 10;

SELECT
    COUNT(*) AS total_rows,
    SUM(age IS NULL) AS missing_age,
    SUM(sex IS NULL) AS missing_sex,
    SUM(bmi IS NULL) AS missing_bmi,
    SUM(charges IS NULL) AS missing_charges,
    SUM(age_group IS NULL) AS missing_age_group,
    SUM(bmi_category IS NULL) AS missing_bmi_category
FROM insurance;
