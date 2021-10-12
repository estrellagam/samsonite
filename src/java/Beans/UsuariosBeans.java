package Beans;

/**
 *
 * @author richa
 */
public class UsuariosBeans {
    
    private int cod;
    private String nom;
    private String nomusu;
    private String apell;
    private String correo;
    private String dni;
    private String telefono;
    private String contraseña;
    private String tipo;

    

    public UsuariosBeans(int cod, String nom, String nomusu, String apell, String correo, String dni, String telefono, String contraseña, String tipo) {
        this.cod = cod;
        this.nom = nom;
        this.nomusu = nomusu;
        this.apell = apell;
        this.correo = correo;
        this.dni = dni;
        this.telefono = telefono;
        this.contraseña = contraseña;
        this.tipo = tipo;
       
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getNomusu() {
        return nomusu;
    }

    public void setNomusu(String nomusu) {
        this.nomusu = nomusu;
    }

    public String getApell() {
        return apell;
    }

    public void setApell(String apell) {
        this.apell = apell;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

 
 
    
}
