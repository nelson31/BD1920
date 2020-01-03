db.getCollection("testesclinicos").find({})

db.testesclinicos.find();

//Calcula o número de atletas
db.testesclinicos.distinct('idAtleta').length;

// Calcula o numero de Medicos
db.testesclinicos.distinct('idMedico').length;

//Apresenta o nome dos médicos da especialidade de Oftalmologia
db.testesclinicos.find({"idMedico.especialidade" : 'Oftalmologia'});

//Liste os primeiros 5 testes clinicos envolvidos com medicos da localidade Viana do Castelo
db.testesclinicos.find({"idMedico.codigo_postal" : '4935-114'}).pretty().sort({"data_hora" : 1}).limit(5);

// Listar todos os atletas do sexo feminino
db.testesclinicos.find({"idAtleta.genero" : 'F'});

// Apresenta o nome dos médicos da localidade Viana do Castelo

db.testesclinicos.find({},{"idMedico.fName" : 1,"idMedico.lName":1});


