/* What are the top paying data analyst jobs?
- Identify the TOP 10  highest paid data analyst roles that are available remotely.
- Focuses on job postings with specified salaries(remove nulls).
- Why? Highlight the top paying jobs opportunities for data analyst, offering insights into employement opportunities
*/

SELECT
    job_id,
    job_title AS roles,
    job_posted_date,
    job_schedule_type,
    company_dim.name AS company,
    salary_year_avg
FROM 
    job_postings_fact
LEFT JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC
LIMIT 10
