-- Create JobType choices
INSERT INTO vln2_assignment_groups_36.job_jobtype (type) VALUES ('full_time'), ('part_time');

-- Create JobCategory choices
INSERT INTO vln2_assignment_groups_36.job_jobcategory (category) VALUES ('uncategorized'), ('tech'), ('sales'), ('marketing'), ('finance'), ('human_resources'), ('design'), ('education'), ('healthcare');

-- Create 10 Companies
INSERT INTO vln2_assignment_groups_36.company_company (ssn, name, bio, address, page, phone, company_logo)
VALUES
    (0102035569, 'Marel', 'Marel er í hópi stærstu útflutningsfyrirtækja Íslands og er í fararbroddi á heimsvísu í þróun og framleiðslu á háþróuðum búnaði og kerfum til vinnslu á fiski, kjöti og kjúklingi. Marel er alþjóðlegt fyrirtæki og hjá því starfa um 7000 manns um allan heim. Fyrirtækið starfrækir skrifstofur og dótturfyrirtæki í fleiri en 30 löndum, auk 100 umboðsmanna og dreifingaraðila. ', '123 Main St, City, Country', 'www.companyA.com', 8885555, 'path/to/logoA.png'),
    (0203045899, 'Icelandair', 'Icelandair er líflegur vinnustaður með starfstöðvar á Íslandi, Evrópu og Norður-Ameríku. Við erum einn stærsti og fjölbreyttasti vinnustaður landsins og vinnum í alþjóðlegu og síbreytilegu umhverfi. Við fljúgum til fjölda stórborga í Evrópu, Bandaríkjunum og Kanada, og til áfangastaða innanlands og á Grænlandi.', '456 Park Ave, Town, Country', 'www.companyB.com', 9899999, 'path/to/logoB.png'),
    (1357924687, 'Íslandsbanki', 'Íslandsbanki er alhliða banki sem leggur áherslu á að koma til móts við þarfir viðskiptavina sinna og á sér langa sögu sem nær aftur til ársins 1875. Bankinn leggur áherslu á traustan rekstur og að hafa jákvæð áhrif í samfélaginu en hlutverk bankans er að vera hreyfiafl til góðra verka svo viðskiptavinir okkar nái árangri. Með framtíðarsýnina að vera #1 í þjónustu að leiðarljósi vinna þrjár viðskiptaeiningar þétt saman til þess að viðhalda góðum viðskiptasamböndum', '789 Elm St, Village, Country', 'www.companyC.com', 7924680, 'path/to/logoC.png'),
    (2468135797, 'CCP games', 'CCP is a leading independent game developer that has been praised for its artistry, technology and game design that facilitates emergent behaviour, empowering players with compelling means of self-expression. Founded in 1997 on the principle of pushing the envelope and breaking new ground on all levels, CCP is on a mission to create virtual worlds more meaningful than real life. ', '321 Oak St, Town, Country', 'www.companyD.com', 2135790, 'path/to/logoD.png'),
    (1122334457, 'Landspítali', 'Landspítali er lifandi og fjölbreyttur vinnustaður þar sem yfir 7000 manns starfa í þverfaglegum teymum og samstarfi ólíkra fagstétta. Framtíðarsýn Landspítala er að veitt sé framúrskarandi heilbrigðisþjónusta byggð á vísindum, fagmennsku og umhyggju, öflugu fagfólki og studd með umgjörð og aðbúnaði sem sómi er að.', '555 Pine St, City, Country', 'www.companyE.com', 1334455, 'path/to/logoE.png'),
    (9988776657, 'Alvotech', 'Alvotech er fjölþjóðlegt hátæknifyrirtæki í fremstu röð, þar sem yfir 1000 starfsmenn af um 64 þjóðernum vinna að því að móta framtíðina á sviði líftæknilyfja og auka aðgengi sjúklinga um allan heim að hágæða lyfjum. Margir af færustu vísindamönnum landsins starfa hjá fyrirtækinu.', '777 Maple St, Village, Country', 'www.companyF.com', 776655, 'path/to/logoF.png'),
    (5544332217, 'Ikea', 'Í dag starfa um 480 manns hjá IKEA á Íslandi, í lifandi alþjóðlegu umhverfi. Þessi stóri samheldni hópur vinnur daglega að framgangi hugmyndafræði IKEA: „Að gera daglegt líf þægilegra fyrir sem flesta“. Fjölbreytni er lykill að velgengni. Hjá IKEA, fögnum við öllum víddum fjölbreytileikans. Við leggjum áherslu á að skapa vinnuumhverfi þar sem öll eru velkomin, virt, studd og vel metin, sama hver þau eru eða hvaðan þau koma. Við erum fullviss um að sérstaða allra einstaklinga gerir IKEA betri.', '999 Cedar St, Town, Country', 'www.companyG.com', 4332210, 'path/to/logoG.png'),
    (7777777777, 'Háskólinn í Reykjavík', 'Hlutverk Háskólans í Reykjavík er að skapa og miðla þekkingu til að auka samkeppnishæfni og lífsgæði fyrir einstaklinga og samfélag með siðgæði, sjálfbærni og ábyrgð að leiðarljósi.', 'Menntavegur 1', 'www.companyH.com', 777770, 'path/to/logoH.png'),
    (0888888887, 'Nova', 'Nova hefur átt ánægðustu viðskiptavinina í farsímaþjónustu samkvæmt Íslensku ánægjuvoginni sl. 15 ár sem er viðurkenning sem við erum einstaklega þakklát fyrir! Slíkum árangri væri ekki hægt að ná nema með besta liðinu en við leggjum okkur öll fram við það alla daga að skapa besta vinnustaðinn. Nova er skemmtilegur og sveigjanlegur vinnustaður, þar sem mikið er lagt upp úr sjálfstæðum vinnubrögðum, frumkvæði og kappsemi. Þó við segjum sjálf frá, þá er starfsfólk Nova sérlega skemmtilegt, liðsheildin góð og starfsandinn svífur í hæstu hæðum. ', 'Smáralind', 'www.companyI.com', 888880, 'path/to/logoI.png'),
    (0999999997, 'Arion banki', 'Arion banki er lifandi vinnustaður þar sem starfsumhverfið einkennist af fagmennsku, framsækni, umhyggju og tryggð', '333 Spruce St, Town, Country', 'www.companyJ.com', 999990, 'path/to/logoJ.png');


INSERT INTO vln2_assignment_groups_36.job_job (title, category_id, type_id, company_id, location, date_added, due_date, description)
SELECT
    'Job ' || j.id,
    c.id,
    (SELECT id FROM vln2_assignment_groups_36.job_jobtype ORDER BY RANDOM() LIMIT 1),
    co.id,
    co.address,
    CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM(),
    CURRENT_TIMESTAMP + INTERVAL '30 days' * RANDOM(),
    'Description of Job ' || j.id
FROM vln2_assignment_groups_36.job_jobcategory c
JOIN vln2_assignment_groups_36.company_company co ON random() < 0.7  -- Adjust probability for company assignment
CROSS JOIN generate_series(1, 10) AS j(id);