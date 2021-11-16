
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `all_domain` AS
    SELECT 
        `domain`.`domain_id` AS `domain_id`,
        `domain`.`name` AS `name`,
        `domain`.`description` AS `description`
    FROM
        `domain`;

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `employer_view` AS
    SELECT 
        `employer`.`employer_id` AS `employer_id`,
        `employer`.`employer_name` AS `employer_name`,
        `employer`.`employer_headquarters` AS `employer_headquarters`,
        `employer`.`employer_size` AS `employer_size`,
        `employer`.`employer_about` AS `employer_about`,
        `employer`.`domain_id` AS `domain_id`,
        `employer`.`sustainability_interest` AS `sustainability_interest`
    FROM
        `employer`;


CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `candidate_status` AS
    SELECT 
        `c`.`candidate_id` AS `candidate_id`,
        `c`.`first_name` AS `first_name`,
        `c`.`last_name` AS `last_name`,
        `c`.`email_id` AS `email_id`,
        `c`.`phone_no` AS `phone_no`,
        `c`.`experience_year` AS `experience_year`,
        `c`.`skill` AS `skill`,
        `c`.`sustainability_interest` AS `sustainability_interest`
    FROM
        `candidate` `c`
    WHERE
        EXISTS( SELECT 
                `a`.`application_status`
            FROM
                `application` `a`
            WHERE
                (`a`.`application_status` = 'Recieved'));


CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `earliest_deadline` AS
    SELECT 
        MIN(`job_posting`.`application_deadline`) AS `MIN(application_deadline)`
    FROM
        `job_posting`
    WHERE
        (`job_posting`.`posting_date` > '2020-10-01');



CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `employees` AS
    SELECT 
        `user_authentication`.`username` AS `username`
    FROM
        `user_authentication`
    WHERE
        (`user_authentication`.`user_type` = 'employer')
    ORDER BY `user_authentication`.`user_id`;









CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `fall_posting` AS
    SELECT 
        `interview_review`.`review` AS `review`
    FROM
        `interview_review`
    WHERE
        (`interview_review`.`posting_date` > '2021-09-30')
    ORDER BY `interview_review`.`posting_date`

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `gen_fullname` AS
    SELECT 
        CONCAT(`candidate`.`first_name`,
                ' ',
                `candidate`.`last_name`) AS `Name`
    FROM
        `candidate`;

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `job_applications` AS
    SELECT 
        `jp`.`job_id` AS `job_id`,
        `jp`.`title` AS `title`,
        `jp`.`job_location` AS `job_location`,
        `ap`.`application_status` AS `application_status`
    FROM
        (`job_posting` `jp`
        JOIN `application` `ap` ON ((`jp`.`job_id` = `ap`.`job_id`)))
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `job_employer_info` AS
    SELECT 
        `e`.`employer_name` AS `employer_name`,
        `e`.`employer_headquarters` AS `employer_headquarters`,
        `e`.`employer_about` AS `employer_about`
    FROM
        `employer` `e`
    WHERE
        (`e`.`employer_id` = (SELECT 
                `j`.`employer_id`
            FROM
                `job_posting` `j`
            WHERE
                (`j`.`title` = 'Senior U X Designer')));


CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `location_not_seattle` AS
    SELECT 
        `job_posting`.`job_id` AS `job_id`,
        `job_posting`.`title` AS `title`,
        `job_posting`.`employer_id` AS `employer_id`,
        `job_posting`.`job_location` AS `job_location`,
        `job_posting`.`job_description` AS `job_description`,
        `job_posting`.`application_deadline` AS `application_deadline`,
        `job_posting`.`posting_date` AS `posting_date`
    FROM
        `job_posting`
    WHERE
        (`job_posting`.`job_location` <> 'Seattle')
    ORDER BY `job_posting`.`application_deadline`;


CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `postings_in_seattle` AS
    SELECT 
        `job_posting`.`job_id` AS `job_id`,
        `job_posting`.`title` AS `title`,
        `job_posting`.`employer_id` AS `employer_id`,
        `job_posting`.`job_location` AS `job_location`,
        `job_posting`.`job_description` AS `job_description`,
        `job_posting`.`application_deadline` AS `application_deadline`,
        `job_posting`.`posting_date` AS `posting_date`
    FROM
        `job_posting`
    GROUP BY `job_posting`.`job_location`
    HAVING (`job_posting`.`job_location` = 'Seattle');

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `size_above_500` AS
    SELECT 
        COUNT(0) AS `COUNT(*)`
    FROM
        `employer`
    WHERE
        (`employer`.`employer_size` > 500);

