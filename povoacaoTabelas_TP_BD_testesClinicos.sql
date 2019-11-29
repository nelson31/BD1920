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
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4730-050', 'AZÕES');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4720-019', 'AMARES');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4730-584', 'SOUTELO');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4730-062', 'BARBUDO');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4720-000', 'AMARES');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4720-999', 'AMARES');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4720-492', 'GOÃES AMR');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4720-448', 'FISCAL');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('8001-901', 'FARO');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('8201-901', 'ALBUFEIRA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('8700-513', 'OLHÃO');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('8701-908', 'FUSETA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('8800-112', 'LUZ TVR');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('3750-100', 'ÁGUEDA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('3800-378', 'AVEIRO');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('5300-411', 'AVELEDA BGC');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('6200-872', 'COVILHÃ');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('3040-382', 'COIMBRA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('3025-106', 'COIMBRA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('1300-472', 'LISBOA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('1750-451', 'LISBOA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('2765-598', 'ESTORIL');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('2655-319', 'ERICEIRA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('2695-833', 'SÃO JOÃO DA TALHA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('2610-181', 'AMADORA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('6301-909', 'GUARDA');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('7080-091', 'VENDAS NOVAS');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('9050-050', 'FUNCHAL');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('9600-112', 'RABO DE PEIXE');
INSERT INTO testesclinicos.CODIGO_POSTAL (codigo_postal, localidade) VALUES ('4935-114', 'VIANA DO CASTELO');




/* Insercao de categorias*/
INSERT INTO testesclinicos.CATEGORIA (idCategoria, designacao) VALUES(1, '100 metros');
INSERT INTO testesclinicos.CATEGORIA (idCategoria, designacao) VALUES(2, '800 metros');
INSERT INTO testesclinicos.CATEGORIA (idCategoria, designacao) VALUES(3, '500 metros');
INSERT INTO testesclinicos.CATEGORIA (idCategoria, designacao) VALUES(4, '1500 metros');

/* Insercao dos tipos de testes clinicos*/
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (1,'Oftalmologia','00:30:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (2,'Geral','00:50:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (3,'Cardiologia','01:00:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (4,'Gastrenterologia','01:26:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (5,'Ortopedia','01:17:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (6,'Psiquiatria','00:57:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (7,'Radioterapia','00:15:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (8,'Otorrinolaringologia','00:46:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (9,'Hematologia','01:03:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (10,'Genética','02:15:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (11,'Pneumologia','00:53:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (12,'Ressonância Magnética','01:00:00');
INSERT INTO testesclinicos.TESTE_CLINICO (idTeste_Clinico,tipo,duracao) VALUES (13,'Ecografia','00:15:00');

/* Insercao de Medicos */
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (123456, 'Joao', 'Maria', '1974-08-17', '4700-001','Rua de Cima n.º 223, 5.º DTO',1);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (223456, 'Jose','Pinto', '1966-09-11', '4730-050','Avenida da Peca, nº45',2);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (323456, 'Joao Filipe','Neves', '1978-11-02', '4700-002','Rua de Sul n.º 789, 9.º DTO',3);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (423456, 'Pedro','Silva', '1960-09-30', '4750-002','Rua de Este n.º 456, 1.º DTO',2);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (523456, 'Joana','Esteves', '1981-05-13', '4700-001','Rua de Cima n.º 120, 3.º ESQ',1);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (187561, 'Joana','Marquess', '1967-04-02', '6200-872','Rua das Flores n.º 20, 2.º DIR',13);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (145679, 'Carla','Amorim', '1971-11-26', '2695-833','Rua de Camões n.º 125',10);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (178513, 'Rubén','Santos', '1975-02-11', '4700-001','Rua Grande n.º 250, 1.º ESQ',8);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (136556, 'Luis','Rocha', '1976-05-12', '3040-382','Rua da Universidade n.º 120, 3.º ESQ',10);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (456842, 'Maria','Sameiro', '1984-02-28', '3040-382','Rua Alta n.º 121, 3.º ESQ',7);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (856152, 'Filipa','Carvalho', '1981-04-13', '4935-114','Rua 1º de Maio n.º 22, 1.º ESQ',6);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (124749, 'Alváro','Alves', '1989-05-01', '4700-001','Rua 25 de Abril n.º 14',6);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (514984, 'Marco','Tiago', '1991-03-02', '9050-050','Avenida dos combatentes n.º 167, 1.º DTO',5);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (784621, 'Bruno','Maximiano', '1960-10-30', '2655-319','Rua da Liberdade n.º 3, 2.º DTO',5);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (965175, 'Frederico','Pinto', '1965-05-13', '9600-112','Rua dos Pescadores n.º 15',5);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (321551, 'Mariana','Pinheiro', '1984-08-04', '9050-050','Rua Verde n.º 7, 8.º DIR',7);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (123548, 'Fátima','Campos', '1968-12-24', '2610-181','Rua Central n.º 260',13);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (498351, 'Marco','Caeiro', '1985-02-12', '4700-001','Rua de Espanha n.º 240, 1.º ESQ',13);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (984651, 'Orlando','Marques', '1986-05-12', '2695-833','Rua da Talha n.º 30',8);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (132136, 'Rolando','Varela', '1995-02-28', '5300-411','Rua da Planície n.º 25, 3.º ESQ',8);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (716516, 'Filipa','Alves', '1991-04-13', '8800-112','Rua 1º de Maio n.º 25, 1.º ESQ',9);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idTeste_Clinico) VALUES (953515, 'João','Cabral', '1988-04-01', '4700-001','Rua 3 n.º 14',9);


/* Insercao de modalidades*/
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(1,'Tripo salto');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(2,'Salto em altura');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(3,'Salto em comprimento');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(4,'Lançamento do peso');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(5,'Lançamento do dardo');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(6,'Lançamento do disco');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(7,'Lançamento do martelo');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(8,'Decatlo');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(9,'Heptatlo');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(10,'Velocidade pista');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(11,'Velocidade obstáculos');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(12,'Velocidade estafetas');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(13,'Maratona');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(14,'Velocidade pista');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(15,'Marcha');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(16,'Salto com vara');
INSERT INTO testesclinicos.MODALIDADE (idModalidade,designacao) VALUES(17,'Triatlo');





INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (123456, 'Manuel','Marques', '1991-04-22', 'Joao Marques', 'Maria Pinto', 254123689, '4700-001', 1, 1,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (652354, 'Miguel','Pereira', '1991-04-22', 'Ricardo Pereira', 'Maria Pinto', 254123689, '4700-001', 2, 1,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (125478, 'Manuela','Silva', '1991-04-22', 'Joao Silva', 'Maria Pinto', 254123689, '4700-001', 5, 2,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (525252, 'Manuel','Oliveira', '1991-04-22', 'Joaquim Oliveira', 'Maria Pinto', 254123689, '4700-001', 9, 2,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (145263, 'Manuel','Tinoco', '1991-04-22', 'Antonio Tinoco', 'Maria Pinto', 254123689, '4700-001', 8, 1,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (124789, 'Manuel','Joao', '1991-04-22', 'Duarte Joao', 'Maria Pinto', 254123689, '4700-001', 11, 1,'Rua de Cima n.º 753, 4.º DTO');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (164821, 'José','Pires', '1999-04-14', 'Carlos Silva', 'Patrícia Matos', 256147659, '4700-004', 14, 1,'Rua de Baixo n.º 26');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (178511, 'António','Silva', '1997-03-12', 'Francisco Silva', 'Francisca Silva', 256785659, '4700-003', 13, 2,'Rua da Esquerda n.º 28');
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada) VALUES (164822, 'José','Creissac', '1985-12-19', 'Luis Creissac', 'Ana Fernandes', 257564231, '4700-001', 5, 1,'Rua da Liberdade n.º 50');

/* Insercao das consultas*/
INSERT INTO testesclinicos.CONSULTA (idTeste_Clinico, idAtleta, data_hora, estado) VALUES (1, 123456, '2016-01-23 14:30', 'Pendente');
INSERT INTO testesclinicos.CONSULTA (idTeste_Clinico, idAtleta, data_hora, estado) VALUES (1, 123456, '2018-08-27 9:30', 'Efetuado');

/* Insercao dos contactos*/
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('992232223',123456);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('944444444',652354);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('935842123',125478);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('936874693',525252);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('932784315',145263);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('979651324',124789);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('915489512',164821);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('917895135',178511);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('912448789',164821);
INSERT INTO testesclinicos.CONTACTO (contacto,cc_Atleta) VALUES ('913658434',164821);


