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

INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo de estatística para ciência de dados', '2024-07-31 13:00:00', 104);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de codificação em R', '2024-07-31 14:15:00', 105);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Análise de dados com Pandas', '2024-07-31 15:30:00', 106);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Exploração de bibliotecas de visualização', '2024-07-31 16:45:00', 107);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Introdução a algoritmos de clustering', '2024-08-01 08:00:00', 108);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo de técnicas de regressão', '2024-08-01 09:30:00', 109);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Implementação de redes neurais', '2024-08-01 10:45:00', 110);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Análise de casos de uso de DataScience', '2024-08-01 12:00:00', 111);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Revisão de métodos de validação de modelo', '2024-08-01 13:30:00', 112);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Prática com conjuntos de dados do Kaggle', '2024-08-01 14:45:00', 113);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo de técnicas de feature engineering', '2024-08-01 16:00:00', 114);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Revisão de bibliotecas de machine learning', '2024-08-02 08:00:00', 115);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de limpeza e pré-processamento de dados', '2024-08-02 09:30:00', 116);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Exploração de modelos de classificação', '2024-08-02 10:45:00', 117);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo sobre métricas de desempenho', '2024-08-02 12:00:00', 118);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Implementação de validação cruzada', '2024-08-02 13:30:00', 119);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Análise de gráficos de dispersão', '2024-08-02 14:45:00', 120);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Prática com modelos de regressão linear', '2024-08-02 16:00:00', 121);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Exploração de algoritmos de otimização', '2024-08-03 08:00:00', 122);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de modelagem preditiva', '2024-08-03 09:30:00', 123);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Revisão de técnicas de ensemble', '2024-08-03 10:45:00', 124);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Análise de resultados de modelos', '2024-08-03 12:00:00', 125);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo sobre redes neurais profundas', '2024-08-03 13:30:00', 126);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Implementação de PCA', '2024-08-03 14:45:00', 127);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Exploração de técnicas de balanceamento de dados', '2024-08-03 16:00:00', 128);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de ajuste de hiperparâmetros', '2024-08-04 08:00:00', 129);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo de algoritmos de decisão', '2024-08-04 09:30:00', 130);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Análise de resultados de testes A/B', '2024-08-04 10:45:00', 131);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Revisão de algoritmos de otimização', '2024-08-04 12:00:00', 132);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Implementação de redes neurais convolucionais', '2024-08-04 13:30:00', 133);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Exploração de técnicas de regularização', '2024-08-04 14:45:00', 134);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de análise de texto', '2024-08-04 16:00:00', 135);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo sobre modelos generativos', '2024-08-05 08:00:00', 136);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Revisão de técnicas de análise de sentimentos', '2024-08-05 09:30:00', 137);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Prática com redes neurais recorrentes', '2024-08-05 10:45:00', 138);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Análise de dados de séries temporais', '2024-08-05 12:00:00', 139);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de modelagem com TensorFlow', '2024-08-05 13:30:00', 140);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Revisão de conceitos de machine learning', '2024-08-05 14:45:00', 141);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo sobre algoritmos de busca', '2024-08-05 16:00:00', 142);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Implementação de modelos de recomendação', '2024-08-06 08:00:00', 143);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de validação de modelos preditivos', '2024-08-06 09:30:00', 144);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Análise de dados com Seaborn', '2024-08-06 10:45:00', 145);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo sobre técnicas de visualização interativa', '2024-08-06 12:00:00', 146);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Revisão de métodos de inferência estatística', '2024-08-06 13:30:00', 147);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Prática com algoritmos de recomendação colaborativa', '2024-08-06 14:45:00', 148);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Exploração de técnicas de otimização de hiperparâmetros', '2024-08-06 16:00:00', 149);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de análise de dados com SQL', '2024-08-07 08:00:00', 150);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo de métodos de amostragem', '2024-08-07 09:30:00', 151);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Revisão de modelos probabilísticos', '2024-08-07 10:45:00', 152);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Análise de algoritmos de classificação', '2024-08-07 12:00:00', 164);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Implementação de técnicas de feature selection', '2024-08-07 13:30:00', 154);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Exploração de dados com Plotly', '2024-08-07 14:45:00', 155);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo de técnicas de análise multivariada', '2024-08-07 16:00:00', 156);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de desenvolvimento de projetos em DataScience', '2024-08-08 08:00:00', 157);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Revisão de conceitos de mineração de dados', '2024-08-08 09:30:00', 158);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo sobre análise de redes sociais', '2024-08-08 10:45:00', 159);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Prática com algoritmos de otimização estocástica', '2024-08-08 12:00:00', 160);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Exploração de técnicas de análise espacial', '2024-08-08 13:30:00', 161);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Sessão de análise de desempenho de modelos', '2024-08-08 14:45:00', 162);
INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES ('Estudo de conceitos avançados em machine learning', '2024-08-08 16:00:00', 163);


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
    id int PRIMARY KEY auto_increment,
    nota1 int,
    nota2 int,
    nota3 int,
    nota4 int,
    fk_aluno_id int NOT NULL
);
 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
 
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE RESTRICT;
    
ALTER TABLE aluno ADD COLUMN nome VARCHAR(80);
ALTER TABLE aluno ADD COLUMN Tempo_de_estudo INT NOT NULL;
ALTER TABLE aluno  ADD COLUMN rendafamiliar DECIMAL(10,2);
DESCRIBE aluno;
SELECT *FROM aluno;
    
INSERT INTO avaliacao (nota1, nota2, nota3, nota4, fk_aluno_id)
VALUES
(19, 25, 20, 15, 103 ), 
(13, 18, 12, 24, 104), 
(10, 20, 18, 25, 105), 
(17, 13, 19, 21, 106), 
(09, 23, 16, 22, 107) 
;
-- Mostrando a tabela avaliaçao
SELECT * FROM aluno;

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

SHOW TABLES;    

SELECT *FROM aluno;
SELECT *FROM aluno ORDER BY id DESC LIMIT 1;
INSERT aluno(ra, nome, tempo_de_estudo, rendafamiliar)
VALUES ('00034527', 'Juarez', 1, 4567.98);

-- Inserindo 50 alunos na tabela 'aluno'
describe aluno;

alter table aluno

ALTER TABLE aluno
DROP COLUMN tempoestudo;

INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034546', 'Ana', 3, 1234.56);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034800', 'Ana', 3, 1234.56);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034801', 'Bruno', 4, 1500.75);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034802', 'Carla', 2, 987.65);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034803', 'David', 5, 1345.90);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034804', 'Elaine', 3, 1123.45);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034805', 'Fábio', 6, 1587.34);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034806', 'Gabriela', 4, 1300.00);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034807', 'Hugo', 2, 980.20);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034808', 'Isabela', 3, 1050.40);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034809', 'João', 5, 1420.60);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034810', 'Karina', 4, 1250.75);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034811', 'Lúcio', 6, 1600.80);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034812', 'Mariana', 2, 950.30);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034813', 'Nicolas', 3, 1100.25);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034814', 'Olivia', 4, 1200.90);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034815', 'Pedro', 5, 1400.55);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034816', 'Quésia', 3, 1080.60);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034817', 'Ricardo', 4, 1320.10);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034818', 'Sofia', 6, 1450.25);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034819', 'Tiago', 2, 970.75);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034820', 'Ursula', 3, 1090.50);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034821', 'Vinícius', 5, 1370.80);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034822', 'Wanda', 4, 1260.45);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034823', 'Xuxa', 6, 1550.30);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034824', 'Yuri', 2, 940.10);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034825', 'Zara', 3, 1130.25);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034826', 'André', 4, 1400.55);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034827', 'Beatriz', 5, 1270.90);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034828', 'Carlos', 6, 1650.70);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034829', 'Daniela', 2, 960.30);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034830', 'Eduardo', 3, 1070.90);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034831', 'Fernanda', 4, 1210.45);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034832', 'Gabriel', 5, 1390.25);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034833', 'Helena', 6, 1500.00);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034834', 'Igor', 2, 950.90);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034835', 'Jéssica', 3, 1110.35);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034836', 'Kleber', 4, 1270.65);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034837', 'Larissa', 5, 1360.85);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034838', 'Marcelo', 6, 1480.10);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034839', 'Natália', 2, 970.60);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034840', 'Otávio', 3, 1060.55);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034841', 'Paula', 4, 1290.35);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034842', 'Quintino', 5, 1380.75);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034843', 'Rafaela', 6, 1530.20);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034844', 'Samuel', 2, 960.40);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034845', 'Tatiane', 3, 1080.75);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034846', 'Uanderson', 4, 1240.85);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034847', 'Viviane', 5, 1450.90);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034848', 'William', 6, 1570.10);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034849', 'Ximena', 2, 940.80);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034850', 'Yasmin', 3, 1120.90);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034851', 'Zé', 4, 1230.45);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034852', 'Amanda', 5, 1370.60);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034853', 'Breno', 6, 1550.80);
INSERT INTO aluno (ra, nome, tempo_de_estudo, rendafamiliar) VALUES ('00034854', 'Clara', 2, 920.70);

