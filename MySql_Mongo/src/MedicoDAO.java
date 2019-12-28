import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MedicoDAO {

    /**
     * Variável que guarda a password
     * da base de dados
     */
    private static String passDB;

    private static MedicoDAO inst = null;

    private List<String> fullEspecialidades = new ArrayList<>();

    /**
     * Construtor
     */
    public MedicoDAO(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            BufferedReader in = new BufferedReader(new FileReader("configs.txt"));
            passDB = in.readLine();
        }
        catch (Exception e) {
            throw new NullPointerException(e.getMessage());
        }
    }

    public static MedicoDAO getInstance() {
        if (inst == null) {
            inst = new MedicoDAO();
        }
        return inst;
    }


    /**
     * Serve para obter a modalidade
     * @param idEspecialidade
     * @return
     */
    public String getEspecialidade(int idEspecialidade){
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testesclinicos?user=root&password=" + passDB + "&useTimezone=true&serverTimezone=UTC")){
            String esp = "";
            boolean encontrei = false;
            Statement stm = conn.createStatement();
            String sqlMod = "SELECT * FROM Especialidade";

            ResultSet rs= stm.executeQuery(sqlMod);

            if(this.fullEspecialidades.size()==0) {
                while (rs.next()) {
                    this.fullEspecialidades.add(rs.getString(1) + "/" + rs.getString(2));
                }
            }

            System.out.println(idEspecialidade);

            for(String c:this.fullEspecialidades){
                String[] args = c.split("/");
                if(args[0].equals(Integer.toString(idEspecialidade))){
                    esp = args[1];
                }
            }
            return esp;

        } catch (Exception e) {throw new NullPointerException(e.getMessage());}
    }



    /**
     * Implementação do método get para objetos da classe ContaDAO
     * @return
     */
    public List<Medico> getMedicos() {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testesclinicos?user=root&password=" + passDB + "&useTimezone=true&serverTimezone=UTC")) {
            Medico med = null;
            Statement stm = conn.createStatement();
            String sqlMed = "SELECT * FROM Medico";

            // Lista dos atletas
            List<Medico> medicos = new ArrayList<>();

            ResultSet rs = stm.executeQuery(sqlMed);

            int i = 0;

            System.out.println("Conseguiu ligar-se!");

            while (rs.next()) {

                int idEsp = rs.getInt(7);

                //System.out.println(idEsp);

                String esp = this.getEspecialidade(idEsp);

                med = new Medico(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6),esp);
                medicos.add(med);
                System.out.println("Criou " + i + " medicos!");
                i++;
            }
            return medicos;
        }
        catch (Exception e) {throw new NullPointerException(e.getMessage());}
    }
}
