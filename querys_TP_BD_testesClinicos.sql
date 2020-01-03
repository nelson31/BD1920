

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
from medico m, especialidade e
where m.idEspecialidade = e.idEspecialidade and e.designacao = 'Psiquiatria';

#Apresenta o nome dos médicos da localidade Viana do Castelo
select m.fname
from medico m, codigo_postal cp
where m.codigo_postal = cp.codigo_postal and cp.localidade = 'Viana do Castelo';

#Apresenta o atleta mais velho
select a.fName, maxtestesclinicos(idade(a.DataNascimento))
from atleta a;

#Apresenta as datas das consultas futuras (pendentes) do atleta com cc 123456, qual a especialidade e o médico do teste clinico a realizar
select a.fName, tc.data_hora, m.fName, m.lName, e.designacao 
from atleta a, teste_clinico tc, medico m, especialidade e
where tc.idAtleta = a.cc and a.cc = '123456' and efetuado(tc.data_hora) = false and tc.idMedico = m.idMedico and m.idEspecialidade = e.idEspecialidade;

#Apresenta as datas das consultas já efetuadas do atleta com cc 123456 qual a especialidade e o médico do teste clinico realizados
select a.fName, tc.data_hora, m.fName, m.lName, e.designacao 
from atleta a, teste_clinico tc, medico m, especialidade e
where tc.idAtleta = a.cc and a.cc = '123456' and efetuado(tc.data_hora) = true and tc.idMedico = m.idMedico and m.idEspecialidade = e.idEspecialidade;

#Apresenta o número de testes médicos aprovados, em avaliação e chumbados nos testes médicos
select r.designacao, count(r.idResultado)
from atleta a, teste_clinico tc, resultado r
where a.cc = tc.idAtleta and tc.idResultado = r.idResultado
group by r.idResultado;


#Apresenta a percentagem de testes médicos aprovados, em avaliação e reprovados nos teste médicos
select r.designacao as resultado, (count(tc.data_hora)*100/(Select count(*) from teste_clinico)) as percentagem
from atleta a, teste_clinico tc, resultado r
where a.cc = tc.idAtleta and tc.idResultado = r.idResultado 
group by r.idResultado;

#Apresenta o nome dos médicos pela ordem do número de testes reprovados
select m.fName as fname, m.lname as lName, count(r.idResultado) as número_de_reprovações
from medico m, teste_clinico tc, resultado r
where tc.idResultado = r.idResultado and tc.idMedico = m.idMedico and r.idResultado = 3
group by m.idMedico
order by count(r.idResultado);


#Apresenta o nome do médico com mais reprovações
select m.fName as fname, m.lname as lName, count(r.idResultado) as número_de_reprovações
from medico m, teste_clinico tc, resultado r
where tc.idResultado = r.idResultado and tc.idMedico = m.idMedico and r.idResultado = 3
group by m.idMedico
order by count(r.idResultado) DESC LIMIT 1;

#Apresenta os médicos com um dado código postal
select distinct m.fname, m.lname
from medico m, codigo_postal cp
where m.codigo_postal = cp.codigo_postal and m.codigo_postal = '4700-001';

#Apresenta os atletas com um dado código postal
select distinct a.fname, a.lname
from atleta a, codigo_postal cp
where a.codigo_postal = cp.codigo_postal and a.codigo_postal = '4720-448';

#Apresenta o número de atletas por modalidade ordenados por ordem crescente
select m.designacao, count(a.cc)
from modalidade m, atleta a
where m.idModalidade = a.idModalidade
group by m.idModalidade
order by count(a.cc);

#Apresenta o nome da modalidade com mais atletas
select m.designacao, count(a.cc)
from modalidade m, atleta a
where m.idModalidade = a.idModalidade
group by m.idModalidade
order by count(a.cc) DESC LIMIT 1;

#Apresenta o número de médicos por especialidade
select e.designacao, count(m.idMedico)
from especialidade e, medico m
where e.idEspecialidade = m.idEspecialidade
group by m.idEspecialidade
order by count(m.idMedico);

#Apresenta o número de reprovações por modalidade
select m.designacao, count(tc.data_hora)
from modalidade m, atleta a, teste_clinico tc
where m.idModalidade = a.idModalidade