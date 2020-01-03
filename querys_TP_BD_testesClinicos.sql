########### Documento que contem algumas queries usadas para testar o Sistema #############

#  Calcula a media de idades dos medicos
select avg(idade(dataNascimento)) as MediaIdadeMedicos
from Medico;

#Calcula a media das idades dos atletas
select avg(idade(dataNascimento))
from Atleta;

#Calcula o número de atletas
select count(*)
from Atleta;

#Apresenta o nome dos médiso da especialidade de Psiquiatria
select m.fname, m.lName
from medico m, especialidade e
where m.idEspecialidade = e.idEspecialidade and e.designacao = 'Psiquiatria';

#Apresenta o nome dos médicos da localidade Viana do Castelo
select m.fname
from medico m, codigo_postal cp
where m.codigo_postal = cp.codigo_postal and cp.localidade = 'Viana do Castelo';

#Apresenta o atleta mais velho
SELECT a.fName, max(idade(a.DataNascimento))
FROM Atleta a;

#Apresenta as datas das consultas futuras (pendentes) do atleta com cc 123456, qual a especialidade e o médico do teste clinico a realizar
select a.fName, tc.data_hora, m.fName, m.lName, e.designacao 
from atleta a, teste_clinico tc, medico m, especialidade e
where tc.idAtleta = a.cc and a.cc = '123456' and efetuado(tc.data_hora) = false and tc.idMedico = m.idMedico and m.idEspecialidade = e.idEspecialidade;

#Apresenta as datas das consultas já efetuadas do atleta com cc 123456 qual a especialidade e o médico do teste clinico realizados
select a.fName, tc.data_hora, m.fName, m.lName, e.designacao 
from atleta a, teste_clinico tc, medico m, especialidade e
where tc.idAtleta = a.cc 
and a.cc = '123456' 
and efetuado(tc.data_hora) = true 
and tc.idMedico = m.idMedico 
and m.idEspecialidade = e.idEspecialidade;

# Apresente o número de médicos para cada especialidade.

SELECT e.designacao AS Especialidade, count(idMedico) AS NumMedicos FROM Medico m, Especialidade e
WHERE e.idEspecialidade = m.idEspecialidade
GROUP BY e.idEspecialidade
ORDER BY e.designacao ASC;

# Numero de testes clínicos que estao pendentes
# Foi chamada a funcao definida por nos ('efetuado') que dada uma data, 
# da verdadeiro caso o teste clinico ja tenha sido efetuado

SELECT count(idMedico) AS Pendentes FROM Teste_Clinico 
WHERE NOT efetuado(data_hora);

# Média de idades dos atletas por localidade.

SELECT cp.localidade, AVG(idade(a.dataNascimento)) as Media FROM ATLETA a, CODIGO_POSTAL cp
WHERE a.codigo_postal=cp.codigo_postal
GROUP BY cp.localidade;

# Contar os medicos diferentes envolvidos em testes clinicos
select count(distinct(idMedico)) from teste_clinico;
