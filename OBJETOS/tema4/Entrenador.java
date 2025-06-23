/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema4;

/**
 *
 * @author Administrator
 */
public class Entrenador extends Empleado {
    private int campGanados;

    public Entrenador(int campGanados, String nombre, int sueldo, int antiguedad) {
        super(nombre, sueldo, antiguedad);
        this.campGanados = campGanados;
    }

    
    public int getCampGanados() {
        return campGanados;
    }

    public void setCampGanados(int campGanados) {
        this.campGanados = campGanados;
    }

    @Override
    public String toString() {
        return "Entrenador{, su nombre es: "+ this.getNombre() + ", campGanados=" + campGanados + ", sueldo=" + this.calcularSueldo() + ", antiguedad=" + this.getAntiguedad() + "y su efectividad es de: "+ this.calcularEfectividad();
    }

    @Override
    public int calcularEfectividad() {
        return (this.getCampGanados() % this.getAntiguedad());
    }

    @Override
    public int calcularSueldo() {
       int suel =this.getSueldo() % 10;
       int ant= this.getAntiguedad();
       int tot= suel*ant;
       
       if (this.getCampGanados() <= 4){
        this.setSueldo(this.getSueldo() + tot +5000);
        return (this.getSueldo());
       } 
       if  (this.getCampGanados() <= 10) {
        this.setSueldo(this.getSueldo() + tot +30000);
        return (this.getSueldo());
       }
        if  (this.getCampGanados() > 10 ) {
            this.setSueldo(this.getSueldo() + tot + 50000);
            return (this.getSueldo());
        }
    return (this.getSueldo()+tot);
    }
}