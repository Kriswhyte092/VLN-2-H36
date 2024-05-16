-- Create JobType choices
INSERT INTO vln2_assignment_groups_36.job_jobtype (type) VALUES ('full_time'), ('part_time');

-- Create JobCategory choices
INSERT INTO vln2_assignment_groups_36.job_jobcategory (category) VALUES ('tech'), ('sales'), ('marketing'), ('finance'), ('human_resources'), ('design'), ('education'), ('healthcare');

-- Create Companies
INSERT INTO vln2_assignment_groups_36.company_company (ssn, name, bio, address, page, phone, company_logo)
VALUES
    (0102035569, 'Marel', 'Marel is among the largest export companies in Iceland...', '123 Main St, Reykjavik, Iceland', 'www.marel.com', '3548885555', 'company_logos/marel_logo_thumb.png'),
    (0203045899, 'Icelandair', 'Icelandair is a lively workplace with operations in Iceland, Europe, and North America...', '456 Park Ave, Reykjavik, Iceland', 'www.icelandair.com', '3549899999', 'company_logos/Icelandair-Logo-1999.png'),
    (1357924687, 'Íslandsbanki', 'Íslandsbanki is a universal bank...', '789 Elm St, Reykjavik, Iceland', 'www.islandsbanki.is', '3547924680', 'company_logos/Íslandsbanki_logo.png'),
    (2468135797, 'CCP Games', 'CCP is a leading independent game developer...', '321 Oak St, Reykjavik, Iceland', 'www.ccpgames.com', '3542135790', 'company_logos/ccp.png'),
    (1122334457, 'Landspítali', 'Landspítali is a vibrant and diverse workplace...', '555 Pine St, Reykjavik, Iceland', 'www.landspitali.is', '3541334455', 'company_logos/landspitali.png'),
    (9988776657, 'Alvotech', 'Alvotech is a multinational biotech company...', '777 Maple St, Reykjavik, Iceland', 'www.alvotech.com', '354776655', 'company_logos/alvo.png'),
    (5544332217, 'Ikea', 'IKEA employs around 480 people in Iceland...', '999 Cedar St, Reykjavik, Iceland', 'www.ikea.is', '3544332210', 'company_logos/ikea.png'),
    (7777777777, 'Háskólinn í Reykjavík', 'Reykjavik University aims to create and share knowledge...', 'Menntavegur 1, Reykjavik, Iceland', 'www.ru.is', '354777770', 'company_logos/reykjavikuniversity.png'),
    (0888888887, 'Nova', 'Nova has the happiest customers in mobile services...', 'Smáralind, Kopavogur, Iceland', 'www.nova.is', '354888880', 'company_logos/nova.png'),
    (0999999997, 'Arion Banki', 'Arion Banki is a dynamic workplace...', '333 Spruce St, Reykjavik, Iceland', 'www.arionbanki.is', '354999990', 'company_logos/ArionbankiLogoIs - Copy (1).png');

-- Create Jobs with specific types and company logos
INSERT INTO vln2_assignment_groups_36.job_job (title, category_id, type, company_id, location, date_added, due_date, description)
VALUES
    ('Software Engineer', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'tech'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'CCP Games'), '321 Oak St, Reykjavik, Iceland', CURRENT_TIMESTAMP - INTERVAL '5 days', CURRENT_TIMESTAMP + INTERVAL '25 days', 'Develop and maintain game software for leading game titles.'),
    ('Sales Manager', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'sales'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Icelandair'), '456 Park Ave, Reykjavik, Iceland', CURRENT_TIMESTAMP - INTERVAL '3 days', CURRENT_TIMESTAMP + INTERVAL '20 days', 'Lead the sales team to drive revenue growth.'),
    ('Marketing Specialist', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'marketing'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'part_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Marel'), '123 Main St, Reykjavik, Iceland', CURRENT_TIMESTAMP - INTERVAL '7 days', CURRENT_TIMESTAMP + INTERVAL '15 days', 'Execute marketing campaigns and analyze performance metrics.'),
    ('Financial Analyst', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'finance'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Íslandsbanki'), '789 Elm St, Reykjavik, Iceland', CURRENT_TIMESTAMP - INTERVAL '2 days', CURRENT_TIMESTAMP + INTERVAL '30 days', 'Conduct financial analysis and support investment decisions.'),
    ('HR Coordinator', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'human_resources'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'part_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Landspítali'), '555 Pine St, Reykjavik, Iceland', CURRENT_TIMESTAMP - INTERVAL '1 days', CURRENT_TIMESTAMP + INTERVAL '28 days', 'Assist in the recruitment and onboarding of new employees.'),
    ('Graphic Designer', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'design'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Ikea'), '999 Cedar St, Reykjavik, Iceland', CURRENT_TIMESTAMP - INTERVAL '4 days', CURRENT_TIMESTAMP + INTERVAL '22 days', 'Create visual content for marketing and advertising.'),
    ('Lecturer', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'education'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Háskólinn í Reykjavík'), 'Menntavegur 1, Reykjavik, Iceland', CURRENT_TIMESTAMP - INTERVAL '8 days', CURRENT_TIMESTAMP + INTERVAL '18 days', 'Teach undergraduate and graduate courses in your field of expertise.'),
    ('Registered Nurse', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'healthcare'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Landspítali'), '555 Pine St, Reykjavik, Iceland', CURRENT_TIMESTAMP - INTERVAL '3 days', CURRENT_TIMESTAMP + INTERVAL '25 days', 'Provide patient care and support in a hospital setting.'),
    ('Data Scientist', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'tech'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Nova'), 'Smáralind, Kopavogur, Iceland', CURRENT_TIMESTAMP - INTERVAL '6 days', CURRENT_TIMESTAMP + INTERVAL '20 days', 'Analyze data to provide business insights and support decision making.'),
    ('Product Manager', (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'tech'), (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Alvotech'), '777 Maple St, Reykjavik, Iceland', CURRENT_TIMESTAMP - INTERVAL '2 days', CURRENT_TIMESTAMP + INTERVAL '30 days', 'Oversee product development and manage the product lifecycle.');


-- Generate additional realistic jobs with specific types
INSERT INTO vln2_assignment_groups_36.job_job (title, category_id, type_id, company_id, location, date_added, due_date, description, job_picture)
SELECT
    CASE c.category
        WHEN 'tech' THEN 'Backend Developer'
        WHEN 'sales' THEN 'Account Executive'
        WHEN 'marketing' THEN 'Digital Marketing Coordinator'
        WHEN 'finance' THEN 'Risk Manager'
        WHEN 'human_resources' THEN 'Talent Acquisition Specialist'
        WHEN 'design' THEN 'UX/UI Designer'
        WHEN 'education' THEN 'Assistant Professor'
        WHEN 'healthcare' THEN 'Medical Assistant'
        ELSE 'General Position'
    END || ' at ' || co.name,
    c.id,
    (SELECT id FROM vln2_assignment_groups_36.job_jobtype ORDER BY RANDOM() LIMIT 1),
    co.id,
    co.address,
    CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM(),
    CURRENT_TIMESTAMP + INTERVAL '30 days' * RANDOM(),
    'This is a description for a ' || c.category || ' position at ' || co.name || '.',
    'path/to/' || REPLACE(LOWER(co.name), ' ', '_') || '_job.png'  -- Use company name in job picture path
FROM vln2_assignment_groups_36.job_jobcategory c
JOIN vln2_assignment_groups_36.company_company co ON random() < 0.7 -- Adjust probability for company assignment
ORDER BY RANDOM()
LIMIT 90; -- Create 90 additional job entries
