
CREATE SEQUENCE public.userSequence
INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;


CREATE TABLE Utilisateur
(
    idUser integer NOT NULL DEFAULT nextval('userSequence'
    ::regclass),
    pseudo CHAR,
    mdp CHAR,
    mail CHAR,
    argent FLOAT,
    naissance DATE,
    statut CHAR
);


    CREATE SEQUENCE public.pariSequence
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;



    CREATE TABLE Pari
    (
        idParis integer NOT NULL DEFAULT nextval('pariSequence'
        ::regclass),
        intitulé CHAR,
        categorie CHAR,
        choix1 CHAR,
        choix2 CHAR,
        choix3 CHAR,
        resultatMatch CHAR,
        coteChoix1 FLOAT,
        coteChoix2 FLOAT,
        coteChoix3 FLOAT,
        coteAuto BOOLEAN,
        dateMatch DATE,
        dateStartParis DATE,
        dateEndParis DATE,
        gainBanque FLOAT,
        perteBanque FLOAT

    );