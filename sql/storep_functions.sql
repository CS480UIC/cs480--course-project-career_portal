1.
CREATE PROCEDURE insert_application(IN p_applicant_id int, IN p_candidate_id varchar(60), IN p_job_id varchar(60), IN p_application_status varchar(60) )
BEGIN
INSERT INTO application(applicant_id, candidate_id, job_id, application_status) values (p_applicant_id, p_candidate_id, p_job_id, p_application_status);
END 
----------------------


2.
CREATE PROCEDURE disp_employer()
BEGIN
    select * from employer;
END
-----------------------


3.
CREATE PROCEDURE del_candidate(IN p_id INT)
AS 
Delete FROM candidate
WHERE candidate_id = p_id;
END