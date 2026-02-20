/*
Find job postings from the first quarter that have a salary greater than $70k
-Combine job postings table from the 1st quarter of 2023 (Jan-March)
-Gets job postings with an avg year salary > $70k
*/


WITH job_postings_first_quarter AS (
    SELECT job_id
    FROM 
        job_postings_fact
    WHERE 
        salary_year_avg > 70000
)

SELECT 
    january_jobs.job_id,
    january_jobs.job_title_short,
    january_jobs.salary_year_avg
FROM 
    january_jobs
INNER JOIN job_postings_first_quarter ON january_jobs.job_id = job_postings_first_quarter.job_id

UNION ALL

SELECT 
    february_jobs.job_id,
    february_jobs.job_title_short,
    february_jobs.salary_year_avg
FROM 
    february_jobs
INNER JOIN job_postings_first_quarter ON february_jobs.job_id = job_postings_first_quarter.job_id

UNION ALL

SELECT 
    march_jobs.job_id,
    march_jobs.job_title_short,
    march_jobs.salary_year_avg
FROM 
    march_jobs
INNER JOIN job_postings_first_quarter ON march_jobs.job_id = job_postings_first_quarter.job_id;