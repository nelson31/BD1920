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


DELIMITER //
CREATE FUNCTION `efetuado` (dta datetime) RETURNS BOOLEAN
BEGIN

DECLARE res BOOLEAN;
SET res = true;

IF(TIMESTAMPDIFF(YEAR, dta, CURDATE())<0) THEN 
    SET res = false;
END IF;
IF(TIMESTAMPDIFF(MONTH, dta, CURDATE())<0) THEN 
    SET res = false;
END IF;
IF(TIMESTAMPDIFF(DAY, dta, CURDATE())<0) THEN 
    SET res = false;
END IF;
IF(TIMESTAMPDIFF(HOUR, dta, CURTIME())<0) THEN 
    SET res = false;
END IF;
IF(TIMESTAMPDIFF(MINUTE, dta, CURTIME())<0) THEN 
    SET res = false;
END IF;

RETURN res;

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

/* Insercao dos tipos de especialidade*/
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (1,'Oftalmologia');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (2,'Geral');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (3,'Cardiologia');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (4,'Gastrenterologia');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (5,'Ortopedia');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (6,'Psiquiatria');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (7,'Radioterapia');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (8,'Otorrinolaringologia');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (9,'Hematologia');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (10,'Genética');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (11,'Pneumologia');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (12,'Ressonância Magnética');
INSERT INTO testesclinicos.ESPECIALIDADE (idEspecialidade, designacao) VALUES (13,'Ecografia');

/* Insercao de Medicos */
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (123489, 'Joao', 'Maria', '1974-08-17', '4700-001','Rua de Cima n.º 223, 5.º DTO',1);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (223456, 'Jose','Pinto', '1966-09-11', '4730-050','Avenida da Peca, nº45',2);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (323456, 'Joao Filipe','Neves', '1978-11-02', '4700-002','Rua de Sul n.º 789, 9.º DTO',3);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (423456, 'Pedro','Silva', '1960-09-30', '4750-002','Rua de Este n.º 456, 1.º DTO',2);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (523456, 'Joana','Esteves', '1981-05-13', '4700-001','Rua de Cima n.º 120, 3.º ESQ',1);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (187561, 'Joana','Marquess', '1967-04-02', '6200-872','Rua das Flores n.º 20, 2.º DIR',13);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (145679, 'Carla','Amorim', '1971-11-26', '2695-833','Rua de Camões n.º 125',10);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (178513, 'Rubén','Santos', '1975-02-11', '4700-001','Rua Grande n.º 250, 1.º ESQ',8);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (136556, 'Luis','Rocha', '1976-05-12', '3040-382','Rua da Universidade n.º 120, 3.º ESQ',10);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (456842, 'Maria','Sameiro', '1984-02-28', '3040-382','Rua Alta n.º 121, 3.º ESQ',7);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (856152, 'Filipa','Carvalho', '1981-04-13', '4935-114','Rua 1º de Maio n.º 22, 1.º ESQ',6);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (124749, 'Alváro','Alves', '1989-05-01', '4700-001','Rua 25 de Abril n.º 14',6);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (514984, 'Marco','Tiago', '1991-03-02', '9050-050','Avenida dos combatentes n.º 167, 1.º DTO',5);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (784621, 'Bruno','Maximiano', '1960-10-30', '2655-319','Rua da Liberdade n.º 3, 2.º DTO',5);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (965175, 'Frederico','Pinto', '1965-05-13', '9600-112','Rua dos Pescadores n.º 15',5);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (321551, 'Mariana','Pinheiro', '1984-08-04', '9050-050','Rua Verde n.º 7, 8.º DIR',7);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (123548, 'Fátima','Campos', '1968-12-24', '2610-181','Rua Central n.º 260',13);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (498351, 'Marco','Caeiro', '1985-02-12', '4700-001','Rua de Espanha n.º 240, 1.º ESQ',13);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (984651, 'Orlando','Marques', '1986-05-12', '2695-833','Rua da Talha n.º 30',8);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (132136, 'Rolando','Varela', '1995-02-28', '5300-411','Rua da Planície n.º 25, 3.º ESQ',8);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (716516, 'Filipa','Alves', '1991-04-13', '8800-112','Rua 1º de Maio n.º 25, 1.º ESQ',9);
INSERT INTO testesclinicos.MEDICO (idMedico, fName, lName, dataNascimento, codigo_postal, morada, idEspecialidade) VALUES (953515, 'João','Cabral', '1988-04-01', '4700-001','Rua 3 n.º 14',9);


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

/* Insercao de géneros*/
INSERT INTO testesclinicos.GENERO (idGenero,designacao) VALUES(1,'Feminino');
INSERT INTO testesclinicos.GENERO (idGenero,designacao) VALUES(2,'Masculino');



 
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (123456, 'Manuel','Marques', '1991-04-22', 'Joao Marques', 'Maria Pinto', 254123686, '4700-001', 1, 1,'Rua de Cima n.º 753, 4.º DTO', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (652354, 'Miguel','Pereira', '1991-04-22', 'Ricardo Pereira', 'Maria Pinto', 254123687, '4700-001', 2, 1,'Rua da Oliveira n.º 753, 4.º DTO', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (125478, 'Manuela','Silva', '1991-04-22', 'Joao Silva', 'Maria Pinto', 254123681, '4700-001', 5, 2,'Rua do Rio n.º 753, 4.º DTO', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (525252, 'Manuel','Oliveira', '1991-04-22', 'Joaquim Oliveira', 'Maria Pinto', 254123685, '4700-001', 9, 2,'Rua Grande n.º 753, 4.º DTO', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (145263, 'Manuel','Tinoco', '1991-04-22', 'Antonio Tinoco', 'Maria Pinto', 254123683, '4700-001', 8, 1,'Rua de Cima n.º 753, 4.º DTO', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (124789, 'Manuel','Joao', '1991-04-22', 'Duarte Joao', 'Maria Pinto', 254123684, '4700-001', 11, 1,'Rua do Sul n.º 753, 4.º DTO', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (164821, 'José','Pires', '1999-04-14', 'Carlos Silva', 'Patrícia Matos', 256147659, '4700-004', 14, 1,'Rua de Baixo n.º 26', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (178511, 'António','Silva', '1997-03-12', 'Francisco Silva', 'Francisca Silva', 256785657, '4700-003', 13, 2,'Rua da Esquerda n.º 28', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (164822, 'José','Creissac', '1985-12-19', 'Luis Creissac', 'Ana Fernandes', 257564231, '4700-001', 5, 1,'Rua da Liberdade n.º 50', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (198465, 'Guilherme','Fernandes', '1984-11-19', 'Luis Fernandes', 'Cátia Fernandes', 257564457, '8700-513', 17, 1,'Rua do Poço n.º 12', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (568468, 'Daniel','Santos', '1986-12-17', 'Marco Santos', 'Mariana Santos', 257564897, '8700-513', 5, 1,'Rua da Prata n.º 56', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (981651, 'Paulo','Braz', '1995-05-09', 'Diogo Braz', 'Catarina Ramos', 257564987, '4720-448', 17, 2,'Rua do Sapateiro n.º 12', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (161648, 'José','Esteves', '1999-06-01', 'Victor Silva', 'Ana Esteves', 257564456, '4720-448', 16, 2,'Avenida Fernando Pessoa n.º 11', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (111235, 'João','Lopes', '1997-03-19', 'Luis Costa', 'Lara Lira', 257564496, '1300-472', 4, 1,'Rua da Igreja n.º 2', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (112654, 'Francisco','Fernandes', '1989-01-12', 'Joaquim Fernandes', 'Rita Oliveira', 25756134, '1300-472', 5, 1,'Rua Nova n.º 55', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (131684, 'Rodrigo','Tinoco', '1989-01-10', 'Luis Jesus', 'Ana Iglésias', 25897456, '4700-001', 15, 1,'Rua da Feira n.º 3', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (164898, 'Rui','Matos', '1996-12-22', 'João Matos', 'Ivone Matos', 25754212, '1300-472', 9, 1,'Rua da Graça n.º 4', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (166165, 'Luis','Rodrigues', '1996-08-26', 'José Rodrigues', 'Marta Fernandes', 25751347, '1300-472', 7, 1,'Rua do Ribeiro n.º 6', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (122165, 'Rui','Ferreira', '1994-07-30', 'Paulo Ferreira', 'Mónica Ferreira', 25918754, '4730-062', 11, 1,'Rua dos Bombeiros n.º 71', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (131614, 'Rafael','Lopes', '1999-05-22', 'Miguel Lopes', 'Joana Lopes', 25753252, '4730-062', 12, 1,'Rua da Liberdade n.º 20', 2);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (112211, 'Rosa','Marques', '2000-07-21', 'Marco Marques', 'Mariana Marques', 21189871, '3750-100', 01, 1,'Rua da Água n.º 24', 1);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (115646, 'Rafaela','Luz', '2001-04-15', 'Miguel Luz', 'Ana Luz', 21116125, '3800-378', 11, 1,'Rua do Fogo n.º 78', 1);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (118798, 'Matilde','Fidalgo', '1981-05-14', 'Luis Fidalgo', 'Júlia Fernandes', 21111111, '3800-378', 15, 1,'Rua da Pedreira n.º 27', 1);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (118984, 'Matilde','Lopes', '1985-09-06', 'Abel Lopes', 'Angélica Lopes', 21123254, '3800-378', 06, 1,'Rua da Fonte n.º 24', 1);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (116548, 'Ana','Silva', '1999-11-07', 'Daniel Bragança', 'Rita Braga', 21198498, '3040-382', 06, 1,'Rua do Padeiro n.º 84', 1);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (117985, 'Rita','Morais', '1997-10-22', 'Miguel Morais', 'Sara Morais', 21984654, '4730-062', 04, 1,'Rua da Praia n.º 20', 1);
INSERT INTO testesclinicos.ATLETA (cc, fName, lName, dataNascimento, nome_Pai, nome_Mae, numContribuinte, codigo_postal, idModalidade, idCategoria, morada, idGenero) VALUES (113215, 'Bruna','Barbosa', '1998-12-21', 'Heitor Barbosa', 'Zulmira Barbosa', 21263514, '2765-598', 09, 1,'Rua dos Pescadores n.º 23', 1);

/* Insercao de resultados*/
INSERT INTO testesclinicos.RESULTADO (idResultado,designacao) VALUES(1,'Aprovado');
INSERT INTO testesclinicos.RESULTADO (idResultado,designacao) VALUES(2,'Em avaliação');
INSERT INTO testesclinicos.RESULTADO (idResultado,designacao) VALUES(3,'Reprovado');



/* Insercao dos Testes Clínicos*/
INSERT INTO testesclinicos.TESTE_CLINICO (idAtleta, idMedico, data_hora, duracao, codigo_postal, idResultado) VALUES (123456, 123489, '2016-01-23 14:30', '00:15:00', '3025-106', 1);
INSERT INTO testesclinicos.TESTE_CLINICO (idAtleta, idMedico, data_hora, duracao, codigo_postal, idResultado) VALUES (123456, 223456, '2021-08-27 9:30', '00:25:00','4935-114', 2);
INSERT INTO testesclinicos.TESTE_CLINICO (idAtleta, idMedico, data_hora, duracao, codigo_postal, idResultado) VALUES (652354,  123489, '2015-08-27 9:30', '00:35:00','4700-003', 3);
INSERT INTO testesclinicos.TESTE_CLINICO (idAtleta, idMedico, data_hora, duracao, codigo_postal, idResultado) VALUES (123456, 223456, '2019-11-27 9:30', '00:25:00','4935-114', 2);
INSERT INTO testesclinicos.TESTE_CLINICO (idAtleta, idMedico, data_hora, duracao, codigo_postal, idResultado) VALUES (123456, 223456, '2019-12-27 9:30', '00:25:00','4935-114', 3);
INSERT INTO testesclinicos.TESTE_CLINICO (idAtleta, idMedico, data_hora, duracao, codigo_postal, idResultado) VALUES (123456, 223456, '2019-12-01 9:30', '00:25:00','4935-114', 1);
INSERT INTO testesclinicos.TESTE_CLINICO (idAtleta, idMedico, data_hora, duracao, codigo_postal, idResultado) VALUES (123456, 223456, '2019-12-03 9:30', '00:25:00','4935-114', 1);
INSERT INTO testesclinicos.TESTE_CLINICO (idAtleta, idMedico, data_hora, duracao, codigo_postal, idResultado) VALUES (123456, 223456, '2019-12-03 23:50', '00:25:00','4935-114', 3);

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

