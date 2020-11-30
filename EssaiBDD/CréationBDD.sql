
CREATE SEQUENCE public.newSequence
INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

--ALTER SEQUENCE public."seq_name"
--    OWNER TO postgres;

GRANT ALL ON SEQUENCE newSequence TO "newOwner";




CREATE TABLE Utilisateur
(
    idUser integer NOT NULL DEFAULT nextval('newSequence'
    ::regclass)
    pseudo CHAR,
    mdp CHAR,
    mail CHAR,
    argent FLOAT,
    naissance DATE,
    statut CHAR,
);