-- companies that hv most job postings
WITH count_job_posted AS (
    SELECT 
    company_id,
    COUNT(*) AS count_companies
    FROM 
        job_postings_fact
    GROUP BY 
        company_id
)


SELECT 
    name AS company_name,
    count_job_posted.count_companies
FROM 
    company_dim
LEFT JOIN count_job_posted ON
count_job_posted.company_id = company_dim.company_id
ORDER BY 
    count_job_posted.count_companies DESC