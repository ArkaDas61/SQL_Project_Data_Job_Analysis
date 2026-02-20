/* Find the count of the no. of remote job postings per skill
    - Display the top 5 skills by their demand in remote jobs
    - Include skill_id, name and count of postings requiring the skill
*/


WITH remote_job_skill AS (
    SELECT  
        skill_id,
        COUNT(*) AS skill_count
    FROM 
        skills_job_dim AS skills_to_job
    INNER JOIN job_postings_fact ON 
        job_postings_fact.job_id = skills_to_job.job_id
    WHERE
        job_postings_fact.job_work_from_home = TRUE AND job_title_short = 'Data Analyst'
    GROUP BY 
        skill_id
) 
SELECT 
    remote_job_skill.skill_id,
    skills,
    skill_count
FROM 
    remote_job_skill
INNER JOIN skills_dim ON skills_dim.skill_id = remote_job_skill.skill_id
ORDER BY 
    skill_count DESC
LIMIT 5; 