db.getCollection("testesclinicos").find({})

db.testesclinicos.find();

//Calcula o número de atletas
db.testesclinicos.find({"idAtleta.cc" : 123456}).count();

//Apresenta o nome dos médiso da especialidade de Oftalmologia
db.testesclinicos.find({"idMedico.especialidade" : 'Oftalmologia'});

//Apresenta o nome dos médicos da localidade Viana do Castelo
db.testesclinicos.find({"idAtleta.codigo_postal" : '4700-001'});

//Apresenta o atleta mais velho
db.testesclinicos.find({});
