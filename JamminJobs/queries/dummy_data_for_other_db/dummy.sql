-- Create JobType choices
INSERT INTO job_jobtype (type) VALUES ('full_time'), ('part_time');

-- Create JobCategory choices
INSERT INTO job_jobcategory (category) VALUES ('uncategorized'), ('tech'), ('sales'), ('marketing'), ('finance'), ('human_resources'), ('design'), ('education'), ('healthcare');

-- Create 10 Companies
INSERT INTO company_company (ssn, name, bio, address, page, phone, company_logo)
VALUES
    (123456789, 'Company A', 'Description of Company A', '123 Main St, City, Country', 'www.companyA.com', 8885555, 'path/to/logoA.png'),
    (987654321, 'Company B', 'Description of Company B', '456 Park Ave, Town, Country', 'www.companyB.com', 9899999, 'path/to/logoB.png'),
    (135792468, 'Company C', 'Description of Company C', '789 Elm St, Village, Country', 'www.companyC.com', 7924680, 'path/to/logoC.png'),
    (246813579, 'Company D', 'Description of Company D', '321 Oak St, Town, Country', 'www.companyD.com', 2135790, 'path/to/logoD.png'),
    (112233445, 'Company E', 'Description of Company E', '555 Pine St, City, Country', 'www.companyE.com', 1334455, 'path/to/logoE.png'),
    (998877665, 'Company F', 'Description of Company F', '777 Maple St, Village, Country', 'www.companyF.com', 776655, 'path/to/logoF.png'),
    (554433221, 'Company G', 'Description of Company G', '999 Cedar St, Town, Country', 'www.companyG.com', 4332210, 'path/to/logoG.png'),
    (777777777, 'Company H', 'Description of Company H', '111 Walnut St, City, Country', 'www.companyH.com', 777770, 'path/to/logoH.png'),
    (088888888, 'Company I', 'Description of Company I', '222 Birch St, Village, Country', 'www.companyI.com', 888880, 'path/to/logoI.png'),
    (099999999, 'Company J', 'Description of Company J', '333 Spruce St, Town, Country', 'www.companyJ.com', 999990, 'path/to/logoJ.png');


INSERT INTO job_job (title, category_id, type_id, company_id, location, date_added, due_date, description)
SELECT
    'Job ' || j.id,
    c.id,
    (SELECT id FROM job_jobtype ORDER BY RANDOM() LIMIT 1),
    co.id,
    co.address,
    CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM(),
    CURRENT_TIMESTAMP + INTERVAL '30 days' * RANDOM(),
    'Description of Job ' || j.id
FROM job_jobcategory c
JOIN company_company co ON random() < 0.7  -- Adjust probability for company assignment
CROSS JOIN generate_series(1, 10) AS j(id);

-- Create 10 Users
INSERT INTO user_user (ssn, name, email, birthdate, phone, picture)
VALUES
    (111111111, 'John Doe', 'johndoe@example.com', '1990-01-01', 34567890, 'path/to/picture1.png'),
    (222222222, 'Jane Doe', 'janedoe@example.com', '1995-05-05', 76543210, 'path/to/picture2.png'),
    (333333333, 'Alice Smith', 'alice@example.com', '1988-07-15', 55555555, 'path/to/picture3.png'),
    (444444444, 'Bob Johnson', 'bob@example.com', '1992-03-20', 44444444, 'path/to/picture4.png'),
    (555555555, 'Emily Brown', 'emily@example.com', '1993-11-10', 66666666, 'path/to/picture5.png'),
    (666666666, 'Michael Davis', 'michael@example.com', '1985-09-25', 77777777, 'path/to/picture6.png'),
    (777777777, 'Jessica Wilson', 'jessica@example.com', '1997-04-30', 88888888, 'path/to/picture7.png'),
    (088888888, 'Daniel Miller', 'daniel@example.com', '1983-12-05', 99999999, 'path/to/picture8.png'),
    (099999999, 'Sarah Martinez', 'sarah@example.com', '1994-08-18', 11111111, 'path/to/picture9.png'),
    (123456789, 'David Anderson', 'david@example.com', '1991-06-12', 22222222, 'path/to/picture10.png');

-- Apply Users to Jobs
INSERT INTO user_appliesto (job_id_id, user_id_id)
SELECT
    j.id,
    u.id
FROM job_job j
         CROSS JOIN user_user u
WHERE RANDOM() < 0.3;  -- Adjust probability as needed
