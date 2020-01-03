import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import org.json.JSONObject;

/**
 * NECESSÁRIO PARA SE FAZER O FICHEIRO JSON QUE CONTÉM OS DADOS NECESSÁRIOS
 * A INSERIR NO MONGODB!!
 * @author Grupo
 */

public class JSONWrite {

    @SuppressWarnings("unchecked")
    public static void main(String[] args) {

        AtletaDAO at = AtletaDAO.getInstance();
        MedicoDAO med = MedicoDAO.getInstance();
        TesteClinicoDAO test = TesteClinicoDAO.getInstance();

        List<Atleta> atletas = at.getAtletas();
        List<Medico> medicos = med.getMedicos();
        List<TesteClinico> testes = test.getTestesClinicos();

        //Cria um Objeto JSON
        JSONObject jsonObject = null;

        try {
            FileWriter writeFile = new FileWriter("testesclinicos.json");

            //Armazena dados em um Objeto JSON
            for (TesteClinico t : testes) {
                jsonObject = new JSONObject();
                System.out.println("Criei + uma entrada!!!!");
                for (Atleta a : atletas) {
                    if (a.getCc() == t.getIdAtleta()) {
                        jsonObject.put("idAtleta",
                                new JSONObject()
                                        .put("cc", a.getCc())
                                        .put("fName", a.getfName())
                                        .put("lName", a.getlName())
                                        .put("dataNascimento", a.getDataNascimento())
                                        .put("nome_Pai", a.getNome_Pai())
                                        .put("nome_Mae", a.getNome_Mae())
                                        .put("numContribuinte", a.getNumContribuinte())
                                        .put("codigo_postal", a.getCodigo_postal())
                                        .put("modalidade", a.getModalidade())
                                        .put("categoria", a.getCategoria())
                                        .put("morada", a.getMorada())
                                        .put("genero", a.getGenero())
                                        .put("contactos", a.getContactos()));
                    }
                }
                for (Medico m : medicos) {
                    if (m.getId() == t.getIdMedico()) {
                        jsonObject.put("idMedico",
                                new JSONObject()
                                        .put("idMedico", m.getId())
                                        .put("fName", m.getfName())
                                        .put("lName", m.getlName())
                                        .put("dataNascimento", m.getDataNascimento())
                                        .put("codigo_postal", m.getCodigo_postal())
                                        .put("morada", m.getMorada())
                                        .put("especialidade", m.getEspecialidade()));
                    }
                }
                jsonObject.put("data_hora", t.getData_hora());
                jsonObject.put("duracao", t.getDuracao());
                //Escreve no arquivo conteúdo do Objeto JSON
                writeFile.write(jsonObject.toString());
                writeFile.write("\n");
                jsonObject = null;
            }
            writeFile.close();
        }
        catch(IOException e){
            e.printStackTrace();
        }
    }
}
