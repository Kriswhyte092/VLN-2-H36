-- Create JobType choices
INSERT INTO vln2_assignment_groups_36.job_jobtype (type) VALUES ('full_time'), ('part_time');

-- Create JobCategory choices
INSERT INTO vln2_assignment_groups_36.job_jobcategory (category) VALUES ('tech'), ('sales'), ('marketing'), ('finance'), ('human_resources'), ('design'), ('education'), ('healthcare');

-- Create Companies
INSERT INTO vln2_assignment_groups_36.company_company (ssn, name, bio, address, page, phone, company_logo)
VALUES
    (4706861279, 'Marel', 'Marel is among the largest export companies in Iceland, providing advanced equipment and systems for the food processing industry.', 'Austurhraun 9, 210 Gardabaer, Iceland', 'https://www.marel.com', '3545638000', 'company_logos/marel_logo_thumb.png'),
    (5412952989, 'Icelandair', 'Icelandair is a leading airline with operations in Iceland, Europe, and North America, connecting the world to Iceland.', 'Reykjavikurflugvollur, 101 Reykjavik, Iceland', 'https://www.icelandair.com', '3545050100', 'company_logos/Icelandair-Logo-1999.png'),
    (4710080280, 'Íslandsbanki', 'Íslandsbanki is a universal bank offering a comprehensive range of financial services.', 'Kirkjusandur 2, 155 Reykjavik, Iceland', 'https://www.islandsbanki.is', '3544404000', 'company_logos/Íslandsbanki_logo.png'),
    (5502983029, 'CCP Games', 'CCP Games is a leading independent game developer known for the MMO game EVE Online.', 'Grandagarður 8, 101 Reykjavik, Iceland', 'https://www.ccpgames.com', '3545409100', 'company_logos/ccp.png'),
    (4302690389, 'Landspítali', 'Landspítali is the National University Hospital of Iceland, providing high-quality healthcare services.', 'Hringbraut, 101 Reykjavik, Iceland', 'https://www.landspitali.is', '3545431000', 'company_logos/landspitali.png'),
    (5705090890, 'Alvotech', 'Alvotech is a multinational biopharmaceutical company focused on the development and manufacturing of biosimilar medicines.', 'Saefari 9, 101 Reykjavik, Iceland', 'https://www.alvotech.com', '3545195000', 'company_logos/alvo.png'),
    (5210860249, 'IKEA', 'IKEA employs around 480 people in Iceland and offers a wide range of well-designed, functional home furnishing products.', 'Kauptún 4, 210 Garðabær, Iceland', 'https://www.ikea.is', '3545202500', 'company_logos/ikea.png'),
    (6509760649, 'Háskólinn í Reykjavík', 'Reykjavik University aims to create and share knowledge, preparing students for leadership positions.', 'Menntavegur 1, 101 Reykjavik, Iceland', 'https://www.ru.is', '3545996200', 'company_logos/reykjavikuniversity.png'),
    (6507070890, 'Nova', 'Nova has the happiest customers in mobile services, providing innovative and reliable telecommunication solutions.', 'Smáralind, 201 Kópavogur, Iceland', 'https://www.nova.is', '3545191000', 'company_logos/nova.png'),
    (5810080150, 'Arion Banki', 'Arion Banki is a dynamic workplace, offering a wide range of financial products and services.', 'Borgartún 19, 105 Reykjavik, Iceland', 'https://www.arionbanki.is', '3544447000', 'company_logos/ArionbankiLogoIs.png');

INSERT INTO vln2_assignment_groups_36.job_job (title, category_id, type, company_id, location, date_added, due_date, description)
VALUES
    ('Software Engineer', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'tech'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'CCP Games'), 
        'Grandagarður 8, 101 Reykjavik, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '5 days', 
        CURRENT_TIMESTAMP + INTERVAL '25 days', 
        'Develop and maintain game software for leading game titles.'
    ),
    ('Sales Manager', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'sales'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Icelandair'), 
        'Reykjavikurflugvollur, 101 Reykjavik, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '3 days', 
        CURRENT_TIMESTAMP + INTERVAL '20 days', 
        'Lead the sales team to drive revenue growth.'
    ),
    ('Marketing Specialist', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'marketing'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'part_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Marel'), 
        'Austurhraun 9, 210 Gardabaer, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '7 days', 
        CURRENT_TIMESTAMP + INTERVAL '15 days', 
        'Execute marketing campaigns and analyze performance metrics.'
    ),
    ('Financial Analyst', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'finance'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Íslandsbanki'), 
        'Kirkjusandur 2, 155 Reykjavik, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '2 days', 
        CURRENT_TIMESTAMP + INTERVAL '30 days', 
        'Conduct financial analysis and support investment decisions.'
    ),
    ('HR Coordinator', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'human_resources'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'part_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Landspítali'), 
        'Hringbraut, 101 Reykjavik, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '1 days', 
        CURRENT_TIMESTAMP + INTERVAL '28 days', 
        'Assist in the recruitment and onboarding of new employees.'
    ),
    ('Graphic Designer', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'design'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'IKEA'), 
        'Kauptún 4, 210 Garðabær, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '4 days', 
        CURRENT_TIMESTAMP + INTERVAL '22 days', 
        'Create visual content for marketing and advertising.'
    ),
    ('Lecturer', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'education'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Háskólinn í Reykjavík'), 
        'Menntavegur 1, 101 Reykjavik, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '8 days', 
        CURRENT_TIMESTAMP + INTERVAL '18 days', 
        'Teach undergraduate and graduate courses in your field of expertise.'
    ),
    ('Registered Nurse', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'healthcare'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Landspítali'), 
        'Hringbraut, 101 Reykjavik, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '3 days', 
        CURRENT_TIMESTAMP + INTERVAL '25 days', 
        'Provide patient care and support in a hospital setting.'
    ),
    ('Data Scientist', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'tech'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Nova'), 
        'Smáralind, 201 Kópavogur, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '6 days', 
        CURRENT_TIMESTAMP + INTERVAL '20 days', 
        'Analyze data to provide business insights and support decision making.'
    ),
    ('Product Manager', 
        (SELECT id FROM vln2_assignment_groups_36.job_jobcategory WHERE category = 'tech'), 
        (SELECT id FROM vln2_assignment_groups_36.job_jobtype WHERE type = 'full_time'), 
        (SELECT id FROM vln2_assignment_groups_36.company_company WHERE name = 'Alvotech'), 
        'Saefari 9, 101 Reykjavik, Iceland', 
        CURRENT_TIMESTAMP - INTERVAL '2 days', 
        CURRENT_TIMESTAMP + INTERVAL '30 days', 
        'Oversee product development and manage the product lifecycle.'
    );
