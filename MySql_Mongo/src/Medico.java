public class Medico {

    private int id;
    private String fName;
    private String lName;
    private String dataNascimento;
    private String codigo_postal;
    private String morada;
    private String especialidade;

    /**
     *
     * @param fName
     * @param lName
     * @param dataNascimento
     * @param codigo_postal
     * @param morada
     * @param especialidade
     */
    public Medico(int id, String fName, String lName, String dataNascimento, String codigo_postal, String morada, String especialidade) {
        this.id=id;
        this.fName = fName;
        this.lName = lName;
        this.dataNascimento = dataNascimento;
        this.codigo_postal = codigo_postal;
        this.morada = morada;
        this.especialidade = especialidade;
    }

    @Override
    public String toString() {
        return "Medico{" +
                "id=" + id +
                ", fName='" + fName + '\'' +
                ", lName='" + lName + '\'' +
                ", dataNascimento='" + dataNascimento + '\'' +
                ", codigo_postal='" + codigo_postal + '\'' +
                ", morada='" + morada + '\'' +
                ", especialidade='" + especialidade + '\'' +
                '}';
    }

    public int getId() {
        return id;
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

    public String getCodigo_postal() {
        return codigo_postal;
    }

    public String getMorada() {
        return morada;
    }

    public String getEspecialidade() {
        return especialidade;
    }
}
