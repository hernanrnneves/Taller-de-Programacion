/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema4;

/**
 *
 * @author Administrator
 */
public class Jugador extends Empleado {
    private int partidos;
    private int goles;

    public Jugador(int partidos, int goles, String nombre, int sueldo, int antiguedad) {
        super(nombre, sueldo, antiguedad);
        this.partidos = partidos;
        this.goles = goles;
    }
    
    public int getPartidos() {
        return partidos;
    }

    public void setPartidos(int partidos) {
        this.partidos = partidos;
    }

    public int getGoles() {
        return goles;
    }

    public void setGoles(int goles) {
        this.goles = goles;
    }

    @Override
    public String toString() {
        return "Jugador, su nombre es: " + this.getNombre()+ "partidos=" + partidos + ", goles=" + goles  +", sueldo=" + this.calcularSueldo() + ", antiguedad=" + this.getAntiguedad() + "y su efectividad es de: "+ this.calcularEfectividad();
    }

    @Override
    public int calcularEfectividad() {
       return (this.getPartidos()%this.getGoles());
    }

    @Override
    public int calcularSueldo() {
        int suel =this.getSueldo() % 10;
        int ant= this.getAntiguedad();
        int tot= suel*ant;
        
        if (this.calcularEfectividad() > 0.5){
        this.setSueldo((this.getSueldo()*2 )+ tot);
        return (this.getSueldo());
        } else {
        this.setSueldo(this.getSueldo()+ tot);
        return (this.getSueldo());
        }
        
    }

}
