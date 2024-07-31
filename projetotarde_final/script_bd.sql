-- DDL (DAta Definition Language)
-- Linguagem de Definição de Dados

-- CREATE
-- DROP
-- ALTER


-- DML (Data Manipulation Language)
-- Linguagem de Manipulação de Dados

-- INSERT
-- UPDATE
-- DELETE



-- DQL (Data Query Language)
-- Linguagem de Pesquisa de Dados 

-- SELECT
-- WHERE
-- FROM
-- > < >= = AND

-- DCL (Data Control Language)
-- Linguagem de controle de Dados
-- Criar Usuários
-- Tarefas de ADMIN
-- Grant
-- Revoke

-- DTL (Data Transaction Language)
-- Transações

-- BEGIN TRAN (OU BEGIN TRANSACTION) – Marca o começo de uma transação no banco da dados  que pode ser completada ou não.
-- COMMIT – Envia todos os dados da transação permanentemente para o banco de dados.
-- ROLLBACK – Desfaz as alterações feitas na transação realizada.

-- DDL: CREATE DATABASE (criar um banco de dados)
CREATE DATABASE schooltracker;
-- Selecionar o banco de dados desejado
USE schooltracker;
-- Usar o banco schooltracker
SHOW tables;
-- Mostrar tabelas do Banco

CREATE TABLE aluno (
    id int PRIMARY KEY auto_increment,
    ra char(8) NOT NULL
);

-- Alterar tabela adicionando a constraint UNIQUE no ra.
ALTER TABLE aluno ADD CONSTRAINT UNIQUE(ra);
DESCRIBE aluno;
-- Pesquisa todos os campos (*) da tabela aluno.
SELECT *FROM aluno;

-- Deletar registros da tabela aluno quando id = 4
DELETE FROM aluno WHERE id>0

-- Mostra a estrutura da tabela.
DESCRIBE aluno;
-- INSERT
INSERT aluno(ra) VALUES ('00034547');
INSERT aluno(ra) VALUES ('00034548');
INSERT aluno(ra) VALUES ('00034550');
INSERT aluno(ra) VALUES ('00034551');
INSERT aluno(ra) VALUES ('00034552');
INSERT aluno(ra) VALUES ('00034553');
INSERT aluno(ra) VALUES ('00034554');
INSERT aluno(ra) VALUES ('00034555');
INSERT aluno(ra) VALUES ('00034556');
INSERT aluno(ra) VALUES ('00034557');
INSERT aluno(ra) VALUES ('00034558');
INSERT aluno(ra) VALUES ('00034559');
INSERT aluno(ra) VALUES ('00034560');
INSERT aluno(ra) VALUES ('00034561');
INSERT aluno(ra) VALUES ('00034562');
INSERT aluno(ra) VALUES ('00034563');
INSERT aluno(ra) VALUES ('00034564');
INSERT aluno(ra) VALUES ('00034565');
INSERT aluno(ra) VALUES ('00034566');
INSERT aluno(ra) VALUES ('00034567');
INSERT aluno(ra) VALUES ('00034568');
INSERT aluno(ra) VALUES ('00034569');
INSERT aluno(ra) VALUES ('00034570');
INSERT aluno(ra) VALUES ('00034571');
INSERT aluno(ra) VALUES ('00034572');
INSERT aluno(ra) VALUES ('00034573');
INSERT aluno(ra) VALUES ('00034574');
INSERT aluno(ra) VALUES ('00034575');
INSERT aluno(ra) VALUES ('00034576');
INSERT aluno(ra) VALUES ('00034577');
INSERT aluno(ra) VALUES ('00034578');
INSERT aluno(ra) VALUES ('00034579');
INSERT aluno(ra) VALUES ('00034580');
INSERT aluno(ra) VALUES ('00034581');
INSERT aluno(ra) VALUES ('00034582');
INSERT aluno(ra) VALUES ('00034583');
INSERT aluno(ra) VALUES ('00034584');
INSERT aluno(ra) VALUES ('00034585');
INSERT aluno(ra) VALUES ('00034586');
INSERT aluno(ra) VALUES ('00034587');
INSERT aluno(ra) VALUES ('00034588');
INSERT aluno(ra) VALUES ('00034589');
INSERT aluno(ra) VALUES ('00034590');
INSERT aluno(ra) VALUES ('00034591');
INSERT aluno(ra) VALUES ('00034592');
INSERT aluno(ra) VALUES ('00034593');
INSERT aluno(ra) VALUES ('00034594');
INSERT aluno(ra) VALUES ('00034595');
INSERT aluno(ra) VALUES ('00034596');
INSERT aluno(ra) VALUES ('00034597');
INSERT aluno(ra) VALUES ('00034594');



DESCRIBE aluno;
SELECT *FROM aluno;

TRUNCATE table aluno;
CREATE TABLE diariobordo (
    id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime,
    fk_aluno_id int
);
 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
    
SHOW tables;

INSERT INTO diariobordo (texto, datahora, fk_aluno_id)
VALUES ('Estudo de DataScience - Revisão de Introdução ao SQL', '2024-07-31 15:55:00 ', 103 );
-- Mostrando a tabela diariobordo
SELECT *FROM diariobordo;

-- Mostrando de forma personalizada o 
SELECT
	d.id,
    d.texto,
    d.datahora,
    a.ra as registro_academico
    
FROM
    diariobordo as d
JOIN
	aluno as a
ON
	d.fk_aluno_id = a.id;
    
-- Exercício - Agora deve inserir o diário de bordo da aula de hoje.
-- Qual o seu RA? Insira o seu RA no sistema e posteriormente crie o seu diário de bordo.
-- Por último, faça um SELECT.
-- Envie esse script para um novo repositório do github
-- Com o nome de projetofinal_tarde.
-- instrutor.romulo@gmail.com

