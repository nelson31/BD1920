import java.util.List;

/**
 * Classe Atleta
 */

public class Atleta {

    private int cc;
    private String fName;
    private String lName;
    private String dataNascimento;
    private String nome_Pai;
    private String nome_Mae;
    private int numContribuinte;
    private String codigo_postal;
    private String modalidade;
    private String categoria;
    private String morada;
    private String genero;
    private List<String> contactos;

    public Atleta(int cc, String fName, String lName, String dataNascimento, String nome_Pai, String nome_Mae, int numContribuinte, String codigo_postal, String modalidade, String categoria, String morada, String genero, List<String> conts) {
        this.cc = cc;
        this.fName = fName;
        this.lName = lName;
        this.dataNascimento = dataNascimento;
        this.nome_Pai = nome_Pai;
        this.nome_Mae = nome_Mae;
        this.numContribuinte = numContribuinte;
        this.codigo_postal = codigo_postal;
        this.modalidade = modalidade;
        this.categoria = categoria;
        this.morada = morada;
        this.genero = genero;
        this.contactos = conts;
    }


    @Override
    public String toString() {
        return "Atleta{" +
                "cc=" + cc +
                ", fName='" + fName + '\'' +
                ", lName='" + lName + '\'' +
                ", dataNascimento='" + dataNascimento + '\'' +
                ", nome_Pai='" + nome_Pai + '\'' +
                ", nome_Mae='" + nome_Mae + '\'' +
                ", numContribuinte=" + numContribuinte +
                ", codigo_postal='" + codigo_postal + '\'' +
                ", modalidade='" + modalidade + '\'' +
                ", categoria='" + categoria + '\'' +
                ", morada='" + morada + '\'' +
                ", genero='" + genero + '\'' +
                ", contactos=" + contactos +
                '}';
    }

    public int getCc() {
        return cc;
    }

    public String getfName() {
        return fName;
    }

    public String getlName() {
        return lName;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public String getNome_Pai() {
        return nome_Pai;
    }

    public String getNome_Mae() {
        return nome_Mae;
    }

    public int getNumContribuinte() {
        return numContribuinte;
    }

    public String getCodigo_postal() {
        return codigo_postal;
    }

    public String getModalidade() {
        return modalidade;
    }

    public String getCategoria() {
        return categoria;
    }

    public String getMorada() {
        return morada;
    }

    public String getGenero() {
        return genero;
    }

    public List<String> getContactos() {
        return contactos;
    }
}
