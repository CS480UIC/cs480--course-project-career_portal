

# Glossary

### Entity Name: employer

Synonyms: Company, Organization

Description: Employer is any organisation or company who hires candidates by posting a job on the portal which allows candidates to apply for a particular job.

### Entity Name: candidate

Synonyms: job_seeker,applicant

Description: Candidates is the actor who applies to particular job posting which can be viewed by the employer to hire for a job role.

### Entity Name: job_posting

Synonyms: job_opportunity, job_availibility

Description: Employers publish job postings which are visible to the interested careers through which they can apply to a job.

### Entity Name: user_authentication

Synonyms: log_in, sign_in

Description: Entry to the portal by the candidate and employer is validated through a sign in process to track the activity of the actors

### Entity Name:application

Synonyms: job_application, entreaty

Description: Applicants fill the application in order to apply for the job roles they are interested in. 


### Entity Name: domain

Synonyms: vertical, area_of expertise

Description: Domain helps to classify and organise companies with similar industry type and sustainable goals which makes it easy to filter companies in the view.

### Entity Name: interview_review

Synonyms: interview_experience, interview_feedback

Description: Interview reviews are keyed by the different candidates who have taken interviews & are sharing their experiences. This data will help others prepare better for interviews.


## Attribute Maxima and Minima 

### domain

domain_id-1-1(1)
name- 1- 1(1)
description1-1(0)

### job_posting

job_id- 1-1(1)
title- M-1(1)
employer_id- 1-1(1)
job_location- 1-M(1)
job_description- 1-1(1)
application_deadline- M-M(1)
posting_date- M-1(1)
	

### candidate

candidate_id 1-1(1)
first_name 1-1(1)
last_name 1-1(1)
email_id 1-1(1)
phone_number 1-M(1)
experience 1-1(1)
skills 1-M (0)
sustainability 1-M(1)

### user_authentication

email_id 1-1(1) 
user_name 1-1(1)
password 1-1(1)
user_type 1-M(1)
user-id 1-1(1)


### employer

employer_id 1-1(1)
employer_name 1-1(1)
employer_headquaters 1-M(1)
employer_size 1-1(0)
employer_about 1-1(1)
domain_id 1-M(1)
sustainability_interest 1-M(1)

### application

application_id 1-1(1)
applicant_id 1-1(1)
job_id 1-M(1)
application_status 1-1(1)

### interview_review
review_id 1-1(1)
employer_id M-1(1)
title 1-1 (1)
posting_date 1-1 (0)
job_review M-1(1)

## Dependency
Independent entities: domain, employer, candidate
Dependent entities: user_authentication, job_posting, interview_review, application
Dependency relationship: employer and candidate logs in via user_authentication
			 employer posts job_posting
			 candidate writes interview_review 
			 candidate fills application
			 
## cascade and restrict actions for dependency relationships
employer and candidate ON DELETE CASCADE user_authentication
employer ON DELETE CASCADE job_posting
candidate ON DELETE RESTRICT interview_review 
candidate ON DELETE CASCADE application

## cascade and restrict rules on foreign keys that implement dependency relationships
user_id(FK) ->username on delete cascade
employer_id(FK) ->job_id on delete cascade
candidate_id(FK) ->review_id on delete cascade
candidate_id(FK) ->applicant_id on delete cascade

## Implementing attribute types
# employer
Attribute Name: employer_id
Type: INTEGER 
Description: Stores a unique ID for each comapany

Attribute Name: employer_name
Type: VARCHAR  
Description: The name of the employer i.e, the company is stored

Attribute Name: employer_headquarters
Type: VARCHAR  
Description: The location of the headquarters 

Attribute Name: employer_size
Type: VARCHAR  
Description: The size i.e, number of members in the company is the employer_size 

Attribute Name: employer_about
Type: VARCHAR  
Description: Details of the company and types of roles they offer

Attribute Name: employer_size
Type: VARCHAR  
Description: The size i.e, number of members in the company is the employer_size 

Attribute Name: sustainability_interest
Type: VARCHAR  
Description: The type of sustainability that the employer supports and related job prospects

# domain
Attribute Name: domain_id
Type: INTEGER 
Description: Stores a unique ID for each domain

Attribute Name: name
Type: VARCHAR  
Description: The name of the domain 

Attribute Name: description
Type: VARCHAR  
Description: description of each domain is stored

# user_authentication
Attribute Name: email_id
Type: VARCHAR 
Description: usesemail ID for each user to authenticate them into the system

Attribute Name: username
Type: VARCHAR  
Description: A unique username for each profile is stored

Attribute Name: password
Type: VARCHAR  
Description: A password is set for each users profile 

Attribute Name: user_type
Type: VARCHAR  
Description: The type of user i.e, employer or candidate.

# job_posting
Attribute Name: job_id
Type: INTEGER 
Description: Stores a unique ID for each job posted

Attribute Name: title
Type: VARCHAR  
Description: A title or a heading for the type of job posting

Attribute Name: job_location
Type: VARCHAR  
Description: The location at which the particular job is hosted

Attribute Name: job_description
Type: VARCHAR  
Description: Detailed description of the job and its responsibilities

Attribute Name: application_deadline
Type: DATE  
Description: The location at which the particular job is hosted

Attribute Name: posting_date
Type: VARCHAR  
Description: Date at which the job was posted

# interview_review
Attribute Name: review_id
Type: INTEGER 
Description: Stores a unique ID for each review

Attribute Name: title
Type: VARCHAR  
Description: A title or a heading for the type of the review

Attribute Name: posting_date
Type: DATE  
Description: Date at which the review was posted

Attribute Name:job_review
Type: VARCHAR  
Description: Review of the interview is posted by the candidate 

# application
Attribute Name: application_id
Type: INTEGER 
Description: Stores a unique ID for each review

Attribute Name: application_status
Type: VARCHAR  
Description: The current status of the application in the recruitment timeline

# candidate
Attribute Name: candidate_id
Type: INTEGER 
Description: Stores a unique ID for each candidate

Attribute Name: first_name
Type: VARCHAR  
Description: The first name of the candidate

Attribute Name: last_name
Type: VARCHAR  
Description: The last name of the candidate

Attribute Name: email_id
Type: VARCHAR  
Description: user email id to aid with authentication

Attribute Name: phone_number
Type: INTEGER  
Description: contact number of the candidate for communication purpose

Attribute Name: experience_year
Type: INTEGER  
Description: The years job of experience of the candidate 

Attribute Name: skill
Type: VARCHAR  
Description: The specific are of expertise and skills of the candidate

Attribute Name: sustainability_interest
Type: VARCHAR  
Description: The type of sustainability that the candidate believes in in-order-to match with prospective jobs











