

# Quer 

select avg(idade(dataNascimento)) as media,lName
from Medico 
group by lName;

select avg(idade(dataNascimento)) as media,lName
from Atleta 
group by lName;

#Calcula a media das idades dos atletas
select avg(idade(dataNascimento))
from Atleta;

#Calcula o número de atletas
select count(*)
from Atleta;

#Apresenta o nome dos médiso da especialidade de Psiquiatria
select m.fname
from medico m, teste_clinico t
where m.idTeste_Clinico = t.idTeste_Clinico and t.tipo = 'Psiquiatria';

#Apresenta o nome dos médicos da localidade Viana do Castelo
select m.fname
from medico m, codigo_postal cp
where m.codigo_postal = cp.codigo_postal and cp.localidade = 'Viana do Castelo';

#Apresenta o atleta mais velho
select a.fName, max(idade(a.DataNascimento))
from atleta a;

#Apresenta as datas das consultas futuras (pendentes) do atleta com cc 123456 e qual o teste clinico a realizar
select a.fName, c.data_hora, tc.tipo
from atleta a, consulta c, teste_clinico tc
where c.idAtleta = a.cc and a.cc = '123456' and c.estado = 'pendente' and c.idTeste_Clinico = tc.idTeste_Clinico;

#Apresenta as datas das consultas já efetuadas do atleta com cc 123456 e qual o teste clinico a realizar
select a.fName, c.data_hora, tc.tipo
from atleta a, consulta c, teste_clinico tc
where c.idAtleta = a.cc and a.cc = '123456' and c.estado = 'efetuado' and c.idTeste_Clinico = tc.idTeste_Clinico;

#Apresenta as datas das consultas já efetuadas do médico com cc 123489 e qual o teste clinico a realizar
select m.fName, c.data_hora, tc.tipo
from medico m, consulta c, teste_clinico tc
where tc.idTeste_Clinico = m.idTeste_Clinico and m.idMedico = '123489' and c.idTeste_Clinico = tc.idTeste_Clinico and c.estado = 'efetuado'; 

#Apresenta as datas das consultas já efetuadas do atleta com cc 123456, qual o teste clinico a realizar e qual o médico
select a.fName, c.data_hora, tc.tipo, m.fName
from atleta a, consulta c, teste_clinico tc, medico m
where c.idAtleta = a.cc and a.cc = '123456' and c.estado = 'efetuado' and c.idTeste_Clinico = tc.idTeste_Clinico and tc.idTeste_Clinico = m.idTeste_Clinico;

