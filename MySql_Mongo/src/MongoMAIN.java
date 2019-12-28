import java.util.List;

public class MongoMAIN {


    public static void main(String[] args) {

        AtletaDAO at = AtletaDAO.getInstance();
        MedicoDAO med = MedicoDAO.getInstance();
        TesteClinicoDAO test = TesteClinicoDAO.getInstance();

        List<Atleta> atletas = at.getAtletas();
        List<Medico> medicos = med.getMedicos();
        List<TesteClinico> testes = test.getTestesClinicos();

        System.out.println(atletas.toString());
        System.out.println(medicos.toString());
        System.out.println(testes.toString());

    }
}
