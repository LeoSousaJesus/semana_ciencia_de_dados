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
    fk_aluno_id int NOT NULL
);
SHOW tables;

 
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

INSERT aluno(ra) VALUES ('00174292');
SELECT *FROM aluno;

INSERT INTO diariobordo (texto, datahora, fk_aluno_id)
VALUES ('Na Aula de hoje abordamos sobre o INSERT em SQL, para inserir e alterar o registro acadêmico (RA) e finalizamos com o estudo do uso de JOIN, FROM e ON ', '2024-07-31 17:50:00 ', 154 );
SELECT *FROM diariobordo;


-- Exercício
-- Modelo Conceitual - crie uma nova entidade chamada avaliação

-- id pk
-- nota 1 int
-- nota 2 int
-- nota 3 int
-- nota 4 int
-- fk_aluno_id


-- Modelo Lógico
-- Modelo Físico (brModelo)
-- INSERTS de 5 alunos com as notas
-- SELECT *FROM avaliacao;
-- SELECT JOIN: tabela aluno com tabela avaliacao.





-- novoprojetologico_avaliacao:



CREATE TABLE avaliacao (
    id INT PRIMARY KEY auto_increment,
    nota1 int,
    nota2 int,
    nota3 int,
    nota4 int
);

CREATE TABLE registra_diariobordo_aluno_avaliacao (
    fk_diariobordo_id INT,
    fk_aluno_id INT,
    fk_avaliacao_id INT
);
 
ALTER TABLE registra_diariobordo_aluno_avaliacao ADD CONSTRAINT FK_registra_diariobordo_aluno_avaliacao_1
    FOREIGN KEY (fk_diariobordo_id)
    REFERENCES diariobordo (id)
    ON DELETE NO ACTION;
 
ALTER TABLE registra_diariobordo_aluno_avaliacao ADD CONSTRAINT FK_registra_diariobordo_aluno_avaliacao_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE RESTRICT;
 
ALTER TABLE registra_diariobordo_aluno_avaliacao ADD CONSTRAINT FK_registra_diariobordo_aluno_avaliacao_3
    FOREIGN KEY (fk_avaliacao_id)
    REFERENCES avaliacao (id)
    ON DELETE NO ACTION;
    
INSERT INTO avaliacao (nota1, nota2, nota3, nota4, fk_aluno_id)
VALUES
(19, 25, 20, 15, 103 ), 
(13, 18, 12, 24, 104), 
(10, 20, 18, 25, 105), 
(17, 13, 19, 21, 106), 
(09, 23, 16, 22, 107) 
;
-- Mostrando a tabela avaliaçao
SELECT *FROM avaliacao;

SELECT
	v.id,
    v.nota1,
    v.nota2,
    v.nota3,
    v.nota4,
    a.ra as registro_academico
    
FROM
   avaliacao as v
JOIN
	aluno as a
ON
	v.fk_aluno_id = a.id;