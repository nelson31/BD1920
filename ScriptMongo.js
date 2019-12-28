db.getCollection("testesclinicos").find({})

db.testesclinicos.find();

//Calcula o número de atletas
db.testesclinicos.find({"idAtleta.cc" : 123456}).count();
