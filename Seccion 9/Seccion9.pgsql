/*Uso de las Cláusulas Group By y Having
Creacion de tabla e insercion de datos*/

CREATE TABLE wf_spoken_languages (
    country_id INTEGER,
    language_id INTEGER,
    official VARCHAR(2),
    comments VARCHAR(512),
    PRIMARY KEY (country_id, language_id)
);

INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (39, 1810, 'N', 'Slovene-speaking minority in the Trieste-Gorizia area');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (225, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (964, 80, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (964, 1000, 'QY', 'official in Kurdish regions');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (964, 100, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (964, 90, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (81, 860, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (203, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (203, 1580, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (204, 0, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (962, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (205, 0, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (254, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (254, 970, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (996, 1100, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (996, 1650, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (850, 980, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (686, 800, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (686, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (82, 980, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (82, 460, 'N', 'English widely taught in junior high and high school');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (618, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (618, 270, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (618, 1230, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (965, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (965, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (3, 900, 'QY', 'Qazaq, state language');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (3, 1650, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (856, 1110, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (856, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (856, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (961, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (961, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (961, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (961, 90, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (371, 1130, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (371, 1650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (371, 1150, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (370, 1150, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (370, 1650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (370, 1560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (231, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (421, 1800, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (421, 770, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (421, 1620, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (421, 2350, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (423, 660, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (266, 1720, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (266, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (266, 3000, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (266, 2700, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (352, 1170, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (352, 660, 'QY', 'administrative language');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (352, 560, 'QY', 'administrative language');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (218, 80, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (218, 850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (218, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (261, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (261, 1220, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (596, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (596, 340, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (853, 200, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (853, 1270, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (853, 760, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (373, 1380, 'Y', 'virtually the same as the Romanian language');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (373, 1650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (373, 610, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (270, 1200, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (270, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (976, 910, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (976, 220, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (976, 1650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1664, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (265, 250, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (265, 280, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (265, 320, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (265, 310, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (265, 290, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (265, 260, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (265, 300, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (381, 1710, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (389, 1180, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (389, 40, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (389, 2250, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (389, 1620, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (389, 1710, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (223, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (223, 107, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (377, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (377, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (377, 850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (377, 1390, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (212, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (212, 560, 'QY', 'French often the language of business, government, and diplomacy');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (230, 340, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (230, 140, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (230, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (222, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (222, 1590, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (222, 1840, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (222, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (222, 710, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (222, 2650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (356, 1260, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (356, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (968, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (968, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (968, 106, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (968, 2400, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (960, 1250, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (960, 460, 'QY', 'English spoken by most government officials');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (52, 1850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (60, 105, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (60, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (60, 270, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (60, 1910, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (60, 1250, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (60, 1520, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (258, 450, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (258, 1580, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (258, 440, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (258, 430, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (687, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (683, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (671, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (227, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (227, 720, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (227, 400, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (678, 460, 'N', 'local languages (more than 100)');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (678, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (234, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (234, 720, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (234, 2900, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (234, 790, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (31, 410, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (31, 570, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (47, 160, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (47, 1480, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (977, 1440, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (977, 1210, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (977, 1960, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (977, 1900, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (977, 1190, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (977, 460, 'N', 'note: many in government and business also speak English');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (674, 460, 'QY', 'English widely understood, spoken, and used for most government and commercial purposes');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (597, 410, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (597, 460, 'QY', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (599, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (599, 410, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (599, 340, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (505, 1850, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (64, 1310, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (595, 700, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (206, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (51, 1610, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (51, 101, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (208, 0, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (92, 1600, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (92, 1760, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (92, 1540, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (92, 2400, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (92, 106, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (92, 460, 'Y', 'official and lingua franca of Pakistani elite and most government ministries');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (48, 1560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (507, 1850, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (507, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (351, 1580, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (351, 1370, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (675, 1340, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (675, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (680, 1510, 'QY', 'Palauan 64.7 percent official in all islands except Sonsoral - Sonsoralese and English are official, Tobi - Tobi and English are official, and Angaur- Angaur, Japanese, and English are official');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (680, 530, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (680, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (680, 270, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (680, 860, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (245, 1580, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (245, 350, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (974, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (974, 460, 'QY', 'English commonly used as a second language');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (262, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (262, 340, 'QY', 'Creole widely used');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (692, 1320, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (692, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (40, 1640, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (40, 770, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (40, 660, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (63, 530, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (63, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1787, 1850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1787, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (7, 1650, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (250, 950, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (250, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (250, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (250, 970, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (966, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (508, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1869, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (248, 340, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (248, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (27, 840, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (27, 830, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (27, 30, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (27, 1700, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (27, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (27, 1730, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (27, 1720, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (221, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (221, 2650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (221, 1590, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (221, 870, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (221, 1290, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (290, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (386, 1820, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (232, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (378, 850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (65, 1270, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (65, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (65, 1230, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (65, 760, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (65, 200, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (65, 1930, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (65, 1910, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (252, 1830, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (252, 80, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (252, 850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (252, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (34, 220, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1758, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1758, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (249, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (249, 1470, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (249, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (209, 1480, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (209, 1650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (46, 1870, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (280, 0, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (963, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (963, 1000, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (963, 90, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (963, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (963, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (41, 660, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (41, 560, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (41, 850, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (41, 40, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (41, 1580, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (41, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1868, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1868, 740, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1868, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1868, 1850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1868, 270, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (66, 1950, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (66, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (992, 1890, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (992, 1650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1649, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (690, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (676, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (228, 480, 'QY', 'the two major African languages in the south');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (228, 1350, 'QY', 'the two major African languages in the south');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (228, 380, 'QY', 'major African languages in the north');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (239, 1580, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (297, 410, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (297, 1530, 'N', '(a Spanish, Portuguese, Dutch, English dialect)');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (297, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (297, 1850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (1268, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (971, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (971, 1550, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (971, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (971, 740, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (971, 2400, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (93, 1550, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (93, 1540, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (93, 2450, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (93, 2300, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (213, 80, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (213, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (994, 103, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (994, 1650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (994, 90, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (355, 40, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (355, 670, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (355, 1630, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (355, 1790, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (374, 90, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (374, 2850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (374, 1650, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (376, 230, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (376, 560, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (376, 210, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (376, 1580, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (244, 1580, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (244, 110, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (684, 1660, 'Y', '(closely related to Hawaiian and other Polynesian languages) note: most people are bilingual');
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (684, 460, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (684, 2100, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (54, 1850, 'Y', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (54, 460, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (54, 850, 'N', NULL);
INSERT INTO wf_spoken_languages(country_id, language_id, official, comments) VALUES (54, 660, 'N', NULL);

/*Consultas SQL*/

SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY department_id;


SELECT MAX(salary)
FROM employees
GROUP BY department_id;


SELECT COUNT(country_name), region_id
FROM wf_countries
GROUP BY region_id
ORDER BY region_id;


SELECT COUNT(*), region_id
FROM wf_countries
GROUP BY region_id
ORDER BY region_id;


SELECT department_id, MAX(salary)
FROM employees
WHERE last_name != 'King'
GROUP BY department_id;


SELECT region_id, ROUND(AVG(population)) AS population
FROM wf_countries
GROUP BY region_id
ORDER BY region_id;


SELECT country_id, COUNT(language_id) AS "Number of
languages"
FROM wf_spoken_languages
GROUP BY country_id;


SELECT department_id, job_id,
count(*)
FROM employees
WHERE department_id > 40
GROUP BY department_id, job_id;


SELECT MAX(avg_salary)
FROM (
    SELECT AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg;


/*Consulta HAVING*/

SELECT department_id,MAX(salary)
FROM employees
GROUP BY department_id
HAVING COUNT(*)>1
ORDER BY department_id;


SELECT region_id,
ROUND(AVG(population))
FROM wf_countries
GROUP BY region_id
HAVING MIN(population)>300000
ORDER BY region_id;


/*ROLLUP*/

SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id < 50
GROUP BY ROLLUP (department_id, job_id);


/*CUBE*/

SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id < 50
GROUP BY CUBE (department_id, job_id);


/*GROUPING SETS*/

SELECT department_id, job_id, manager_id, SUM(salary)
FROM employees
WHERE department_id < 50
GROUP BY GROUPING SETS
((job_id, manager_id),(department_id, job_id),
(department_id, manager_id));


/*Funciones GROUPING*/

SELECT department_id, job_id, SUM(salary),
GROUPING(department_id) AS "Dept sub total",
GROUPING(job_id) AS "Job sub total"
FROM employees
WHERE department_id < 50
GROUP BY CUBE (department_id, job_id);


/*Uso de los Operadores SET*/

SELECT hire_date, employee_id, job_id
FROM employees
UNION
SELECT NULL::date AS hire_date, employee_id, job_id
FROM job_history
ORDER BY employee_id;


SELECT hire_date, employee_id, job_id
FROM employees
UNION
SELECT NULL::DATE AS hire_date, employee_id, job_id
FROM job_history
ORDER BY employee_id;