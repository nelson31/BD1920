import javax.swing.tree.ExpandVetoException;
import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AtletaDAO {

    /**
     * Variável que guarda a password
     * da base de dados
     */
    private static String passDB;

    private static AtletaDAO inst = null;

    private List<String> fullContacts = new ArrayList<>();
    private List<String> fullCategories = new ArrayList<>();
    private List<String> fullModalidades = new ArrayList<>();

    /**
     * Construtor
     */
    public AtletaDAO(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            BufferedReader in = new BufferedReader(new FileReader("configs.txt"));
            passDB = in.readLine();
        }
        catch (Exception e) {
            throw new NullPointerException(e.getMessage());
        }
    }

    public static AtletaDAO getInstance() {
        if (inst == null) {
            inst = new AtletaDAO();
        }
        return inst;
    }

    /**
     * Serve para obter a categoria
     * @param idCat
     * @return
     */
    public String getCat(int idCat){

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testesclinicos?user=root&password=" + passDB + "&useTimezone=true&serverTimezone=UTC")){
            String cat = "";
            boolean encontrei = false;
            if(this.fullCategories.size()==0) {
                Statement stm = conn.createStatement();
                String sqlCat = "SELECT * FROM Categoria";

                ResultSet rs= stm.executeQuery(sqlCat);

                while (rs.next()) {
                    this.fullCategories.add(rs.getString(1) + "/" + rs.getString(2));
                }
            }

            for(String c:this.fullCategories){
                String[] args = c.split("/");
                if(args[0].equals(Integer.toString(idCat))){
                    cat = args[1];
                }
            }
            return cat;

        } catch (Exception e) {throw new NullPointerException(e.getMessage());}
    }

    /**
     * Serve para obter a modalidade
     * @param idMod
     * @return
     */
    public String getMod(int idMod){
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testesclinicos?user=root&password=" + passDB + "&useTimezone=true&serverTimezone=UTC")){
            String mod = "";
            boolean encontrei = false;

            if(this.fullModalidades.size()==0) {
                Statement stm = conn.createStatement();
                String sqlMod = "SELECT * FROM Modalidade";

                ResultSet rs= stm.executeQuery(sqlMod);

                System.out.println(this.fullModalidades.toString());

                while (rs.next()) {
                    this.fullModalidades.add(rs.getString(1) + "/" + rs.getString(2));
                }
            }

            for(String c:this.fullModalidades){
                String[] args = c.split("/");
                if(args[0].equals(Integer.toString(idMod))){
                    mod = args[1];
                }
            }
            return mod;

        } catch (Exception e) {throw new NullPointerException(e.getMessage());}
    }

    /**
     * Serve para obter todas as contactos
     * @param idAt
     * @return
     */
    public List<String> getListaConts(int idAt){

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testesclinicos?user=root&password=" + passDB + "&useTimezone=true&serverTimezone=UTC")) {
            // Lista das contactos
            List<String> conts = new ArrayList<>();

            if(this.fullContacts.size()==0) {
                Statement stm = conn.createStatement();

                String sqlCon = "SELECT * FROM Contacto";

                ResultSet rs= stm.executeQuery(sqlCon);

                boolean encontrei = false;

                while (rs.next()) {
                    this.fullContacts.add(rs.getString(1) + "/" + rs.getString(2));
                }
            }

            //System.out.println(this.fullContacts.toString());
            for(String c:this.fullContacts){
                String[] args = c.split("/");
                //System.out.println("Cliente: " + args[1]);
                //System.out.println("Atleta: " + idAt);
                if(args[1].equals(Integer.toString(idAt))){
                    conts.add(args[0]);
                    System.out.println("Contacto: " + args[0]);
                }
            }
            return conts;

        } catch (Exception e) {throw new NullPointerException(e.getMessage());}
    }



    /**
     * Implementação do método get para objetos da classe ContaDAO
     * @return
     */
    public List<Atleta> getAtletas() {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testesclinicos?user=root&password=" + passDB + "&useTimezone=true&serverTimezone=UTC")) {
            Atleta at = null;
            Statement stm = conn.createStatement();
            String sqlAt = "SELECT * FROM Atleta";

            // Lista dos atletas
            List<Atleta> atletas = new ArrayList<>();

            ResultSet rs = stm.executeQuery(sqlAt);

            int i = 0;

            System.out.println("Conseguiu ligar-se!");

            while (rs.next()) {

                int idMod = rs.getInt(9);
                int idCat = rs.getInt(10);

                System.out.println(idMod);

                String mod = this.getMod(idMod);
                String cat = this.getCat(idCat);
                System.out.println("Conseguiu ter as mod e os cat!");

                // Lista com os Contactos
                List<String> conts = this.getListaConts(rs.getInt(1));

                at = new Atleta(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getInt(7),rs.getString(8),mod,cat,rs.getString(11),rs.getString(12),conts);
                atletas.add(at);
                System.out.println("Criou " + i + " clientes!");
                i++;
            }
            return atletas;
        }
        catch (Exception e) {throw new NullPointerException(e.getMessage());}
    }

}
