--insert users--
insert into stravnik values (1, 'Test user', '01');
insert into stravnik values (2, 'Test user', '02');
insert into stravnik values (3, 'Test user', '03');
insert into stravnik values (4, 'Test user', '04');
insert into stravnik values (5, 'Test user', '05');
insert into stravnik values (6, 'Test user', '06');
insert into stravnik values (7, 'Test user', '07');
insert into stravnik values (8, 'Test user', '08');
insert into stravnik values (9, 'Test user', '09');
insert into stravnik values (10, 'Test user', '10');

--insert konta--
insert into konto values (1, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 1);
insert into konto values (2, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 1);
insert into konto values (3, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 2);
insert into konto values (4, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 3);
insert into konto values (5, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 4);
insert into konto values (6, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 5);
insert into konto values (7, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 6);
insert into konto values (8, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 7);
insert into konto values (9, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 8);
insert into konto values (10, 1000, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 9);
insert into konto values (11, 10000, TO_DATE('1.2.2019', 'DD/MM/YYYY'), 1, 10);

--insert dodavatel--
insert into dodavatel values (1, 'Dodavatel 01', 'DIC01');
insert into dodavatel values (2, 'Dodavatel 02', 'DIC02');
insert into dodavatel values (3, 'Dodavatel 03', 'DIC03');

--insert zbozi--
insert into zbozi values (1, 'susenka 01', 100, 1);
insert into zbozi values (2, 'susenka 02', 30, 1);
insert into zbozi values (3, 'bageta 01', 80, 2);
insert into zbozi values (4, 'lahev vody', 20, 3);

--insert nakup--