

# Quer 

select avg(idade(data_nascimento)) as media 
from Medico 
where idade(data_inicio_servico) > 15;