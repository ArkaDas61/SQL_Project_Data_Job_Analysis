/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills,
  helping job seekers understand which skills to develop that align with top salaries
*/

WITH top_paying_jobs AS (
    SELECT
    job_id,
    job_title AS roles,
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
)

SELECT 
    top_paying_jobs.*,
    skills_dim.skills
FROM 
    top_paying_jobs
INNER JOIN skills_job_dim ON skills_job_dim.job_id = top_paying_jobs.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
ORDER BY 
    salary_year_avg DESC 

/*
📊 What This Tells You
1️⃣ SQL is Non-Negotiable

Every single top-paying role requires SQL.
👉 This confirms SQL is the foundation skill for high-paying Data Analyst jobs.

2️⃣ Python is Nearly Universal

7 out of 8 roles require Python.
High-paying analysts are expected to:

Automate workflows

Perform advanced analysis

Work with data pipelines

3️⃣ Visualization Still Matters

Tableau appears 6 times.
Even at high salaries, communication and dashboarding remain critical.

4️⃣ Cloud & Modern Data Stack

Snowflake and Azure appear multiple times.
👉 High-paying roles are connected to cloud-based data ecosystems.

5️⃣ Not Just “Analysis” — Engineering Adjacent

Skills like:

Pandas

Git/Bitbucket

Go

Suggest these roles blend:

Analytics

Data engineering

Automation

Version control collaboration

🎯 Strategic Takeaways for Job Seekers

If someone wants to target $200K+ Data Analyst roles, they should prioritize:

Core Stack (Must Have)

SQL

Python

Tableau

Competitive Advantage Layer

Cloud platforms (Azure)

Snowflake

Pandas

Version control (Git)

If you'd like, I can next:

📈 Compare salary vs skill count

🏢 Analyze which companies pay the most

🔥 Identify which skills appear only in the VERY highest salary role

🧩 Write the SQL query that would generate this analysis directly from the database
*/

/*
[
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "sql"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "python"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "r"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "azure"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "databricks"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "aws"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "pandas"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "pyspark"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "jupyter"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "excel"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "tableau"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "power bi"
  },
  {
    "job_id": 552322,
    "roles": "Associate Director- Data Insights",
    "company": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "powerpoint"
  },
  {
    "job_id": 99305,
    "roles": "Data Analyst, Marketing",
    "company": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "sql"
  },
  {
    "job_id": 99305,
    "roles": "Data Analyst, Marketing",
    "company": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "python"
  },
  {
    "job_id": 99305,
    "roles": "Data Analyst, Marketing",
    "company": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "r"
  },
  {
    "job_id": 99305,
    "roles": "Data Analyst, Marketing",
    "company": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "hadoop"
  },
  {
    "job_id": 99305,
    "roles": "Data Analyst, Marketing",
    "company": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "roles": "Data Analyst (Hybrid/Remote)",
    "company": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "sql"
  },
  {
    "job_id": 1021647,
    "roles": "Data Analyst (Hybrid/Remote)",
    "company": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "crystal"
  },
  {
    "job_id": 1021647,
    "roles": "Data Analyst (Hybrid/Remote)",
    "company": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "oracle"
  },
  {
    "job_id": 1021647,
    "roles": "Data Analyst (Hybrid/Remote)",
    "company": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "roles": "Data Analyst (Hybrid/Remote)",
    "company": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "flow"
  },
  {
    "job_id": 168310,
    "roles": "Principal Data Analyst (Remote)",
    "company": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "sql"
  },
  {
    "job_id": 168310,
    "roles": "Principal Data Analyst (Remote)",
    "company": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "python"
  },
  {
    "job_id": 168310,
    "roles": "Principal Data Analyst (Remote)",
    "company": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "go"
  },
  {
    "job_id": 168310,
    "roles": "Principal Data Analyst (Remote)",
    "company": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "snowflake"
  },
  {
    "job_id": 168310,
    "roles": "Principal Data Analyst (Remote)",
    "company": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "pandas"
  },
  {
    "job_id": 168310,
    "roles": "Principal Data Analyst (Remote)",
    "company": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "numpy"
  },
  {
    "job_id": 168310,
    "roles": "Principal Data Analyst (Remote)",
    "company": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "excel"
  },
  {
    "job_id": 168310,
    "roles": "Principal Data Analyst (Remote)",
    "company": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "tableau"
  },
  {
    "job_id": 168310,
    "roles": "Principal Data Analyst (Remote)",
    "company": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "gitlab"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "sql"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "python"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "azure"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "aws"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "oracle"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "snowflake"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "tableau"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "power bi"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "sap"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "jenkins"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "bitbucket"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "atlassian"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "jira"
  },
  {
    "job_id": 731368,
    "roles": "Director, Data Analyst - HYBRID",
    "company": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "confluence"
  },
  {
    "job_id": 310660,
    "roles": "Principal Data Analyst, AV Performance Analysis",
    "company": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "sql"
  },
  {
    "job_id": 310660,
    "roles": "Principal Data Analyst, AV Performance Analysis",
    "company": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "python"
  },
  {
    "job_id": 310660,
    "roles": "Principal Data Analyst, AV Performance Analysis",
    "company": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "r"
  },
  {
    "job_id": 310660,
    "roles": "Principal Data Analyst, AV Performance Analysis",
    "company": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "git"
  },
  {
    "job_id": 310660,
    "roles": "Principal Data Analyst, AV Performance Analysis",
    "company": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "bitbucket"
  },
  {
    "job_id": 310660,
    "roles": "Principal Data Analyst, AV Performance Analysis",
    "company": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "atlassian"
  },
  {
    "job_id": 310660,
    "roles": "Principal Data Analyst, AV Performance Analysis",
    "company": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "jira"
  },
  {
    "job_id": 310660,
    "roles": "Principal Data Analyst, AV Performance Analysis",
    "company": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "confluence"
  },
  {
    "job_id": 1749593,
    "roles": "Principal Data Analyst",
    "company": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "sql"
  },
  {
    "job_id": 1749593,
    "roles": "Principal Data Analyst",
    "company": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "python"
  },
  {
    "job_id": 1749593,
    "roles": "Principal Data Analyst",
    "company": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "go"
  },
  {
    "job_id": 1749593,
    "roles": "Principal Data Analyst",
    "company": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "snowflake"
  },
  {
    "job_id": 1749593,
    "roles": "Principal Data Analyst",
    "company": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "pandas"
  },
  {
    "job_id": 1749593,
    "roles": "Principal Data Analyst",
    "company": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "numpy"
  },
  {
    "job_id": 1749593,
    "roles": "Principal Data Analyst",
    "company": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "excel"
  },
  {
    "job_id": 1749593,
    "roles": "Principal Data Analyst",
    "company": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1749593,
    "roles": "Principal Data Analyst",
    "company": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "gitlab"
  },
  {
    "job_id": 387860,
    "roles": "ERM Data Analyst",
    "company": "Get It Recruit - Information Technology",
    "salary_year_avg": "184000.0",
    "skills": "sql"
  },
  {
    "job_id": 387860,
    "roles": "ERM Data Analyst",
    "company": "Get It Recruit - Information Technology",
    "salary_year_avg": "184000.0",
    "skills": "python"
  },
  {
    "job_id": 387860,
    "roles": "ERM Data Analyst",
    "company": "Get It Recruit - Information Technology",
    "salary_year_avg": "184000.0",
    "skills": "r"
  }
]
*/