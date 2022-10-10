-- CREAR DATABASE ms_person
CREATE DATABASE "ms_person"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Peru.1252'
    LC_CTYPE = 'Spanish_Peru.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- COMENTAR DATABASE
COMMENT ON DATABASE "ms_person"
    IS 'Person Microservice Database';


-- CREAR TABLA person
CREATE TABLE person (
    id SERIAL PRIMARY KEY NOT NULL,
    id_type VARCHAR(50) NOT NULL,
    id_number VARCHAR(15) NOT NULL,
    name VARCHAR(80) NOT NULL,
    lastname VARCHAR(80) NOT NULL,
    cellphone VARCHAR(9) NOT NULL,
    email VARCHAR(80) NOT NULL,
    username VARCHAR(80) NOT NULL,
    password VARCHAR(80) NOT NULL,
    active BOOLEAN NOT NULL
);


-- INSERTAR REGISTROS DE person
INSERT INTO person
(id_type,id_number,name,lastname,cellphone,email,username,password,active)
VALUES
('DNI','70335061','Juan Gabriel','Condori Jara','940460321','juangabrielcondorijara@gmail.com','juan','12345@ABC',true);


--CONSULTAR REGISTROS DE person
SELECT * FROM person;