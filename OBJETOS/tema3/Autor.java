/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema3;

/**
 *
 * @author Administrator
 */
public class Autor {
    private String nombre;
    private String bibliografia;
    private String origen;

    public Autor(String nombre, String bibliografia, String origen) {
        this.nombre = nombre;
        this.bibliografia = bibliografia;
        this.origen = origen;
    }

   
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getBibliografia() {
        return bibliografia;
    }

    public void setBibliografia(String bibliografia) {
        this.bibliografia = bibliografia;
    }

    public String getOrigen() {
        return origen;
    }

    public void setOrigen(String origen) {
        this.origen = origen;
    }

    @Override
    public String toString() {
        return "Autor es: " + nombre + ", bibliografia: " + bibliografia + ", y su origen es: " + origen ;
    }
    
    
    
}
