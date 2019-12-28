import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TesteClinicoDAO {

    /**
     * Variável que guarda a password
     * da base de dados
     */
    private static String passDB;

    private static TesteClinicoDAO inst = null;


    /**
     * Construtor
     */
    public TesteClinicoDAO(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            BufferedReader in = new BufferedReader(new FileReader("configs.txt"));
            passDB = in.readLine();
        }
        catch (Exception e) {
            throw new NullPointerException(e.getMessage());
        }
    }

    public static TesteClinicoDAO getInstance() {
        if (inst == null) {
            inst = new TesteClinicoDAO();
        }
        return inst;
    }


    /**
     * Implementação do método get para objetos da classe ContaDAO
     * @return
     */
    public List<TesteClinico> getTestesClinicos() {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testesclinicos?user=root&password=" + passDB + "&useTimezone=true&serverTimezone=UTC")) {
            TesteClinico tc = null;
            Statement stm = conn.createStatement();
            String sqltest = "SELECT * FROM Teste_Clinico";

            // Lista dos atletas
            List<TesteClinico> testes = new ArrayList<>();

            ResultSet rs = stm.executeQuery(sqltest);

            int i = 0;

            System.out.println("Conseguiu ligar-se!");

            while (rs.next()) {
                tc = new TesteClinico(rs.getInt(1), rs.getInt(2), rs.getDate(3),rs.getTime(4));
                testes.add(tc);
                System.out.println("Criou " + i + " testes!");
                i++;
            }
            return testes;
        }
        catch (Exception e) {throw new NullPointerException(e.getMessage());}
    }
}
