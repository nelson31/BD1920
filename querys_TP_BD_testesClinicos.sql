

# Quer 

select avg(idade(dataNascimento)) as media,lName
from Medico 
group by lName;

select avg(idade(dataNascimento)) as media,lName
from Atleta 
group by lName;

select count(*)
from Atleta;

select m.fname
from medico m, teste_clinico t
where m.idTeste_Clinico = t.idTeste_Clinico and t.tipo = 'Psiquiatria';

select m.fname
from medico m, codigo_postal cp
where m.codigo_postal = cp.codigo_postal and cp.localidade = 'Viana do Castelo';