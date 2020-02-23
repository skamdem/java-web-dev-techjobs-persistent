## Part 1: Test it with SQL
# columns and their data types in the table "job"
id int(11) PK
employer varchar(255)
name varchar(255)
skills varchar(255)

## Part 2: Test it with SQL
# List the names of the employers in St. Louis City
select employer.name from employer where employer.location LIKE "St%Louis";

## Part 3: Test it with SQL
# SQL statement to remove the job table
drop table job;

## Part 4: Test it with SQL
# list of the names and descriptions of all skills
# that are attached to jobs in alphabetical order.
# If a skill does not have a job listed,
# it should not be included in the results of this query.

select skill.name, skill.description
from skill where skill.id in
    (select distinct skills_id
    from job_skills) order by name, description;
