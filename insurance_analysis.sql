USE insurance_project;

-- 1. Overall insurance charges analysis
SELECT
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_charges,
    ROUND(MIN(charges), 2) AS lowest_charges,
    ROUND(MAX(charges), 2) AS highest_charges
FROM insurance;

-- 2. Compare insurance charges by smoking status
SELECT
    smoker,
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_charges,
    ROUND(MIN(charges), 2) AS lowest_charges,
    ROUND(MAX(charges), 2) AS highest_charges
FROM insurance
GROUP BY smoker
ORDER BY average_charges DESC;

-- 3. Analyze insurance charges by age group
SELECT
    age_group,
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_charges
FROM insurance
GROUP BY age_group
ORDER BY AVG(age);

-- 4. Analyze insurance charges by region
SELECT
    region,
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_charges
FROM insurance
GROUP BY region
ORDER BY average_charges DESC;

-- 5. Analyze insurance charges by BMI category
SELECT
    bmi_category,
    COUNT(*) AS total_customers,
    ROUND(AVG(bmi), 2) AS average_bmi,
    ROUND(AVG(charges), 2) AS average_charges
FROM insurance
GROUP BY bmi_category
ORDER BY average_charges DESC;

-- 6. Analyze insurance charges by number of children
SELECT
    children,
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_charges
FROM insurance
GROUP BY children
ORDER BY children;

-- 7. Compare charges by age group and smoking status
SELECT
    age_group,
    smoker,
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_charges
FROM insurance
GROUP BY age_group, smoker
ORDER BY age_group, smoker;