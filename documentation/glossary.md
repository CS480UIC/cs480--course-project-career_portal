

###Glossary

Entity Name: employer

Synonyms: Company, Organization

Description: Employer is any organisation or company who hires candidates by posting a job on the portal which allows candidates to apply for a particular job.

Entity Name: candidate

Synonyms: job_seeker,applicant

Description: Candidates is the actor who applies to particular job posting which can be viewed by the employer to hire for a job role.

Entity Name: job_posting

Synonyms: job_opportunity, job_availibility

Description: Employers publish job postings which are visible to the interested careers through which they can apply to a job.

Entity Name: user_authentication

Synonyms: log_in, sign_in

Description: Entry to the portal by the candidate and employer is validated through a sign in process to track the activity of the actors

Entity Name:application

Synonyms: job_application, entreaty

Description: Applicants fill the application in order to apply for the job roles they are interested in. 


Entity Name: domain

Synonyms: vertical, area_of expertise

Description: Domain helps to classify and organise companies with similar industry type and sustainable goals which makes it easy to filter companies in the view.


Attribute Maxima and Minima 

domain

domain_id-1-1(1)
name- 1- 1(1)
description1-1(0)

job_posting

job_id- 1-1(1)
title- M-1(1)
employer_id- 1-1(1)
job_location- 1-M(1)
job_description- 1-1(0)
application_deadline- M-M(1)
posting_date- M-1(1)
	

candidate

candidate_id 1-1(1)
first_name 1-1(1)
last_name 1-1(1)
email_id 1-1(1)
phone_number 1-M(0)
resume 1-1(1)
experience 1-1(0)
skills 1-M (0)
sustainability 1-M(1)

user_authentication

email_id 1-1(1) 
user_name 1-1(1)
password 1-1(1)
user_type 1-M(1)
user-id 1-1(1)


employer

employer_id 1-1(1)
employer_name 1-1(1)
employer_headquaters 1-M(1)
employer_size 1-1(1)
employer_about 1-1(1)
domain_id 1-M(1)
sustainability_interest 1-M(1)

application

application_id 1-1(1)
applicant_id 1-1(1)
job_id 1-M(0)
application_status 1-1(1)

