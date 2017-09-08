create database filmes_db;

use filmes_db;

create table ator (
	id_ator int not null,
    nome varchar(50),
    morada varchar(50),
    sexo char(1) check (sexo='m' or sexo='f'),
    data_nascimento date,
    primary key (id_ator)
);

create table diretor(
	id_diretor int not null,
    nome varchar(50),
    categoria char(1) check (categoria='A' or categoria='B' or categoria='C'),
    primary key (id_diretor)
);

create table estudio(
	id_estudio int not null,
    nome varchar(50),
    morada varchar(50),
    primary key (id_estudio)
);

create table filme(
	id_filme int not null,
    id_estudio int not null,
    id_diretor int not null,
    nome varchar(50),
    ano int,
    duracao int,
    a_cores bool,
    primary key (id_filme),
    foreign key (id_estudio) references estudio (id_estudio),
    foreign key (id_diretor) references diretor (id_diretor)
);

create table participa(
	id_filme int not null,
    id_ator int not null,
    foreign key (id_filme) references filme(id_filme),
    foreign key (id_ator) references ator(id_ator)
);

    INSERT INTO estudio VALUES (1,'Fox'             , '101 Embarcadero, Los Angeles');
    INSERT INTO estudio VALUES (2,'Disney'          , '56 Yankee Boulevard, Los Angeles');
    INSERT INTO estudio VALUES (3,'Paramount'       , '44 Pine St., Los Angeles');
    INSERT INTO estudio VALUES (4,'Universal'       , '23 Universal Studies Dr., Los Angeles');
    INSERT INTO estudio VALUES (5,'Warner Brothers' , '71 Parkway Dr., San Diego');

    INSERT INTO diretor VALUES (1,'George Lucas'         , 'A');
    INSERT INTO diretor VALUES (2,'Steven Spielberg'     , 'A');
    INSERT INTO diretor VALUES (3,'Kevin Costner'        , 'B');
    INSERT INTO diretor VALUES (4,'Irvin Kershner'       , 'B');
    INSERT INTO diretor VALUES (5,'Richard Marquand'     , 'A');
    INSERT INTO diretor VALUES (6,'Stephen Herek'        , 'A');
    INSERT INTO diretor VALUES (7,'Penelope Spheeris'    , 'A');
    INSERT INTO diretor VALUES (8,'Roger Allers'         , 'A');
    INSERT INTO diretor VALUES (9,'Mike Gabriel'         , 'A');
    INSERT INTO diretor VALUES (10,'Clint Eastwood'       , 'A');
    INSERT INTO diretor VALUES (11,'Barry Sonnenfeld'     , 'A');
    INSERT INTO diretor VALUES (12,'Merian Cooper'        , 'A');
    INSERT INTO diretor VALUES (13,'John Guillermin'      , 'A');
    INSERT INTO diretor VALUES (14,'Victor Fleming'       , 'C');
    INSERT INTO diretor VALUES (15,'Paul Verhoeven'       , 'B');
    INSERT INTO diretor VALUES (16,'Andrew Davies'        , 'B');
    INSERT INTO diretor VALUES (17,'Tim Burton'           , 'A');
    INSERT INTO diretor VALUES (18,'Tony Scott'           , 'A');
    INSERT INTO diretor VALUES (19,'Stanley Kubrik'       , 'A');
    INSERT INTO diretor VALUES (20,'Baz Luhrmann'         , 'A');
    INSERT INTO diretor VALUES (21,'Oliver Stone'         , 'A');

    INSERT INTO filme VALUES (1,1           ,  1  ,'Star Wars'               , 1977, 124, true);
    INSERT INTO filme VALUES (2,1            ,  4,'Empire Strikes Back'       , 1980, 143, true);
    INSERT INTO filme VALUES (3,1            , 5, 'Return of the Jedi'        , 1983, 165, true);
    INSERT INTO filme VALUES (4,2         ,  6,'Mighty Ducks'              , 1991, 104, true);
    INSERT INTO filme VALUES (5,3      ,  7,'Wayne''s World'            , 1992,  95, true);
    INSERT INTO filme VALUES (6,2        , 7, 'Lion King'                 , 1994, 122, true);
    INSERT INTO filme VALUES (7,2         ,  9,'Pocahontas'                , 1995, 115, true);
    INSERT INTO filme VALUES (8,3      ,  11,'Addams Family'             , 1991, 102, true);
    INSERT INTO filme VALUES (9,4    ,  12,'King Kong'                 , 1933, NULL, false);
    INSERT INTO filme VALUES (10,4     ,  13,'King Kong'                 , 1976, 130, true);
    INSERT INTO filme VALUES (11,3     ,  14,'Gone With the Wind'        , 1939, 181, false);
    INSERT INTO filme VALUES (12,3      ,  15,'Basic Instinct'            , 1986, 100, true);
    INSERT INTO filme VALUES (13,1            , 14, 'Total Recall'              , 1990, 110, true);
    INSERT INTO filme VALUES (14,4      ,  2,'Indiana Jones'             , 1981, 130, true);
    INSERT INTO filme VALUES (15,4      ,  16,'The Fugitive'              , 1993, 120, true);
    INSERT INTO filme VALUES (16,4      , 10,'Bridges of Madison County' , 1995, 147, true);
    INSERT INTO filme VALUES (17,5, 17, 'Batman Returns'            , 1992, 122, true);
    INSERT INTO filme VALUES (18,1,              18,'Top Gun'                   , 1986, 145, true);
    INSERT INTO filme VALUES (19,3,      19,  'Eyes Wide Shut'            , 1999, 148, true);
    INSERT INTO filme VALUES (20,1,              20,'Moulin Rouge'              , 2001, 124, true);
    INSERT INTO filme VALUES (21,1,              21,'JFK'                       , 1996, 130, true );
    INSERT INTO filme VALUES (22,1,              3,'Dances with Wolves'        , 1990, 132, true );

    INSERT INTO ator VALUES (1,'Carrie Fisher'         , '123 Maple St., Hollywood'          ,'f', '1955-11-07');
    INSERT INTO ator VALUES (2,'Mark Hamill'           , '456 Oak Rd., Brentwood'            ,'m', '1950-02-23');
    INSERT INTO ator VALUES (3,'Harrison Ford'         , '789 Palm Dr., Beverly Hills'       ,'m', '1944-07-13');
    INSERT INTO ator VALUES (4,'Emilio Estevez'        , '201 California St., Mountain View' ,'m', '1960-03-22');
    INSERT INTO ator VALUES (5,'Dana Carvey'           , '700 El Camino, Beverly Hills'      ,'f', '1944-04-04');
    INSERT INTO ator VALUES (6,'Mike Meyers'           , '880 Elm St., Santa Barbara'        ,'m', '1935-06-04');
    INSERT INTO ator VALUES (7,'Sharon Stone'          , '550 Elm St., Santa Barbara'        ,'f', '1970-05-14');
    INSERT INTO ator VALUES (8,'Tom Cruise'            , '26 Palm Dr., Hollywood'            ,'m', '1967-08-20');
    INSERT INTO ator VALUES (9,'Arnold Schwarzenegger' , '83 Lincoln Av., Las Vegas'         ,'m', '1967-08-19');
    INSERT INTO ator VALUES (10,'Kim Basinger'          , '101 Sprinfield, Santa Monica'      ,'f', '1967-08-12');
    INSERT INTO ator VALUES (11,'Alec Baldwin'          , '101 Sprinfield, Santa Monica'      ,'m', '1964-01-26');
    INSERT INTO ator VALUES (12,'Michael Keaton'        , '32 Palm Beach, Santa Monica'       ,'m', '1958-03-02');
    INSERT INTO ator VALUES (13,'Danny DeVito'          , '18 Rodeo Dr., Beverly Hills'       ,'m', '1946-04-08');
    INSERT INTO ator VALUES (14,'Michelle Pfeiffer'     , 'Via Venetto 4, Hollywood'          ,'f', '1969-11-14');
    INSERT INTO ator VALUES (15,'Nicole Kidman'         , '26 Palm Dr., Hollywood'            ,'f', '1969-11-14');
    INSERT INTO ator VALUES (16,'Meryl Streep'          , 'Meryl House, Beverly Hills'        ,'f', '1961-06-21');
    INSERT INTO ator VALUES (17,'Kevin Costner'         , '88 Palm Dr., Hollywood'            ,'m', '1965-01-30');
    INSERT INTO ator VALUES (18,'Clint Eastwood'        , '12 Presley Dr., Beverly Hills'     ,'m', '1946-01-25');
    
INSERT INTO Participa VALUES (1, 1);
    INSERT INTO Participa VALUES (1, 2);
    INSERT INTO Participa VALUES (1,  3);
    INSERT INTO Participa VALUES (4, 4);
    INSERT INTO Participa VALUES (5, 5);
    INSERT INTO Participa VALUES (5,  6);
    INSERT INTO Participa VALUES (2, 1);
    INSERT INTO Participa VALUES (3,  1);
    INSERT INTO Participa VALUES (12,  7);
    INSERT INTO Participa VALUES (13,  9);
    INSERT INTO Participa VALUES (13,  7);
    INSERT INTO Participa VALUES (15,  3);
    INSERT INTO Participa VALUES (14,  3);
    INSERT INTO Participa VALUES (17, 12);
    INSERT INTO Participa VALUES (17,  13);
    INSERT INTO Participa VALUES (17,  14);
    INSERT INTO Participa VALUES (19,  15);
    INSERT INTO Participa VALUES (19,  8);
    INSERT INTO Participa VALUES (18	,  8);
    INSERT INTO Participa VALUES (20,  15);
    INSERT INTO Participa VALUES (22,  17);
    INSERT INTO Participa VALUES (21,  17);
    INSERT INTO Participa VALUES (16,  18);
    INSERT INTO Participa VALUES (16,  16);

