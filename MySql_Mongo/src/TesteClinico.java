import java.sql.Date;
import java.sql.Time;

public class TesteClinico {

    private int idAtleta;
    private int idMedico;
    private Date data_hora;
    private Time duracao;


    public TesteClinico(int idAtleta, int idMedico, Date data_hora, Time duracao) {
        this.idAtleta = idAtleta;
        this.idMedico = idMedico;
        this.data_hora = data_hora;
        this.duracao = duracao;
    }

    @Override
    public String toString() {
        return "TesteClinico{" +
                "idAtleta=" + idAtleta +
                ", idMedico=" + idMedico +
                ", data_hora='" + data_hora + '\'' +
                ", duracao=" + duracao +
                '}';
    }

    public int getIdAtleta() {
        return idAtleta;
    }

    public int getIdMedico() {
        return idMedico;
    }

    public Date getData_hora() {
        return data_hora;
    }

    public Time getDuracao() {
        return duracao;
    }
}
