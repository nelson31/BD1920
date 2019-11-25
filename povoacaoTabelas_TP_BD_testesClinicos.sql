/* Trabalho Prático - Base de Dados   */
/* Grupo 29          */
/* MIEI              */
/* Script usado para povoacao das tabelas  */

/* Funcao usada para calcular a idade*/
SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER //
CREATE FUNCTION `idade` (dta date) RETURNS INT
BEGIN
RETURN TIMESTAMPDIFF(YEAR, dta, CURDATE());
END //
DELIMITER ;

/* POVOAMENTO DAS TABELAS */

/* insercao de codigos postais*/
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4750-002', 'BARCELOS');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4700-001', 'BRAGA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4700-002', 'BRAGA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4700-003', 'BRAGA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4700-004', 'BRAGA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4730-050', 'VILA VERDE');

/* Insercao de categorias*/
INSERT INTO testesclinicos.CATEGORIA (idCategoria, designacao) VALUES(1, '100 metros');
INSERT INTO testesclinicos.CATEGORIA (idCategoria, designacao) VALUES(2, '800 metros');
INSERT INTO testesclinicos.CATEGORIA (idCategoria, designacao) VALUES(3, '500 metros');
INSERT INTO testesclinicos.CATEGORIA (idCategoria, designacao) VALUES(4, '1500 metros');

/* Insercao dos tipos de testes clinicos*/
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (1,'Oftalmologia','00:30:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (2,'Geral','00:50:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (3,'Cardiologia','01:00:00');

/* Insercao de Medicos */
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (123456, 'Joao', 'Maria', '1974-08-17', '4700-001','Rua de Cima n.º 223, 5.º DTO',1);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (223456, 'Jose','Pinto', '1966-09-11', '4730-050','Avenida da Peca, nº45',2);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (323456, 'Joao Filipe','Neves', '1978-11-02', '4700-002','Rua de Sul n.º 789, 9.º DTO',3);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (423456, 'Pedro','Silva', '1960-09-30', '4750-002','Rua de Este n.º 456, 1.º DTO',2);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (523456, 'Joana','Esteves', '1981-05-13', '4700-001','Rua de Cima n.º 120, 3.º ESQ',1);

/* Insercao de modalidades*/
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(12345,'Futebol');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(23456,'Andebol');

INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (123456, 'Manuel','Marques', '1991-04-22', 'Joao Marques', 'Maria Pinto', 254123689, '4700-001', 12345, 1,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (652354, 'Miguel','Pereira', '1991-04-22', 'Ricardo Pereira', 'Maria Pinto', 254123689, '4700-001', 12345, 1,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (125478, 'Manuela','Silva', '1991-04-22', 'Joao Silva', 'Maria Pinto', 254123689, '4700-001', 12345, 1,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (525252, 'Manuel','Oliveira', '1991-04-22', 'Joaquim Oliveira', 'Maria Pinto', 254123689, '4700-001', 12345, 2,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (145263, 'Manuel','Tinoco', '1991-04-22', 'Antonio Tinoco', 'Maria Pinto', 254123689, '4700-001', 12345, 1,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (124789, 'Manuel','Joao', '1991-04-22', 'Duarte Joao', 'Maria Pinto', 254123689, '4700-001', 12345, 1,'Rua de Cima n.º 753, 4.º DTO');

/* Insercao das consultas*/
INSERT INTO testesclinicos.CONSULTA (idTeste_Clinico, idAtleta, data_hora, estado) VALUES (1, 123456, '2016-01-23 14:30', 'Pendente');
INSERT INTO testesclinicos.CONSULTA (idTeste_Clinico, idAtleta, data_hora, estado) VALUES (1, 123456, '2018-08-27 9:30', 'Efetuado');

/* Insercao dos contactos*/
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('992232223',123456);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('944444444',652354);


