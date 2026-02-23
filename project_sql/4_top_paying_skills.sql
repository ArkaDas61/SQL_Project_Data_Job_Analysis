/*
What are the top skills based on salary?
• Look at the average salary associated with each skill for Data Analyst positions
• Focuses on roles with specified salaries, regardless of location
• Why? It reveals how different skills impact salary levels for Data Analysts 
    and helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary

FROM 
    job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL 
    AND job_work_from_home = 'TRUE'
GROUP BY
    skills
ORDER BY 
    avg_salary DESC
/*
🔥 1. Big Data & Distributed Systems Pay the Most

Top earners:

pyspark – $208K

bitbucket – $189K

couchbase / watson – ~$160K

datarobot – $155K

gitlab – $154K

Insight:

High salaries are strongly associated with:

Distributed data processing

Cloud-scale systems

ML automation platforms

Enterprise-grade data infrastructure

This suggests these roles are closer to Data Engineering / ML Engineering, not just traditional dashboard-based analytics.

👉 If you want top-tier salary, move beyond just SQL + Excel.

☁️ 2. Cloud + Modern Data Stack = Premium Pay

Strong-paying cloud skills:

databricks – $141K

kubernetes – $132K

gcp – $122K

aws – $108K

azure – $111K

snowflake – $112K

bigquery – $109K

Insight:

Modern analytics lives in the cloud.

Companies pay more when you can:

Work with cloud warehouses

Build pipelines

Manage scalable systems

👉 Cloud + SQL is far more valuable than SQL alone.

🐍 3. Python Ecosystem is Strong — But Context Matters

pandas – $151K

numpy – $143K

scikit-learn – $125K

python – $101K

Insight:

Notice something interesting?

Core libraries (pandas, numpy) pay more than “Python” alone.

That means:

Companies reward applied data skills, not just language knowledge.

Python becomes high-paying when paired with:

ML

Big data

Production systems

📊 4. Traditional BI Tools Pay Mid-Range

tableau – $99K

power bi – $97K

qlik – $99K

looker – $103K

microstrategy – $121K

Insight:

BI tools are important — but not top-paying.

They are:

Essential for entry/mid-level roles

Less lucrative than engineering-focused analytics

👉 Dashboard-only analysts earn less than analysts who can engineer data systems.

🗃 5. SQL Is Foundational — But Not High Paying Alone

sql – $97K

t-sql – $96K

sql server – $97K

postgresql – $123K

mysql – $95K

Insight:

SQL is mandatory — but it doesn’t differentiate you anymore.

Higher SQL salaries appear when paired with:

PostgreSQL (production systems)

Cloud databases

Data engineering workflows

SQL is baseline. Not premium.

🛠 6. DevOps & Workflow Tools Boost Salary

airflow – $126K

jenkins – $125K

kubernetes – $132K

gitlab / bitbucket – $150K+

Insight:

Automation + pipelines = higher pay.

Companies value analysts who can:

Build automated workflows

Deploy models

Handle CI/CD

This is where analysts transition into:

Analytics Engineer

Data Engineer

ML Ops roles

📉 7. Low-Paying Skills = Basic Productivity Tools

Bottom of the list:

excel – $87K

word – $82K

powerpoint – $88K

css – $52K

ruby on rails – $51K

Insight:

These are:

Common skills

Easily replaceable

Not specialized

Excel is necessary — but not differentiating.

💡 8. Major Trend Observations
🔺 Highest Paying Category:

Big Data + Cloud + ML Infrastructure

🔹 Mid-Tier:

BI tools + SQL + scripting

🔻 Lowest:

General office tools + basic web/dev skills

🎯 Strategic Career Advice

If you want:

💰 $140K+ Range:

Learn:

PySpark

Databricks

Cloud (GCP/AWS/Azure)

Airflow

Kubernetes

Advanced Python ecosystem

📊 Stable $100K Range:

Learn:

SQL

Tableau/Power BI

Python

Cloud basics

🚀 Final Big Insight

The highest salaries are paid when:

Data Analyst → becomes → Data Engineer / Analytics Engineer hybrid

The market clearly rewards:

Scalability

Automation

Cloud architecture

Production-level systems

If you'd like, I can also:

📈 Group these into skill clusters (BI vs ML vs Cloud vs DevOps)

🧠 Build a learning roadmap from $90K → $150K+

📊 Help you visualize this data for a portfolio project
*/