/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema3;

/**
 *
 * @author Administrator
 */
public class Habitaciones {
    private int costo;
    private boolean habilitada;
    private Cliente persona;
    
    public Habitaciones(int costo, boolean habilitada, Cliente persona) {
        this.costo = costo;
        this.habilitada = habilitada;
        this.persona = persona;
    }

    public Habitaciones(int costo, boolean habilitada) {
        this.costo = costo;
        this.habilitada = habilitada;
    }
    
    
    public int getCosto() {
        return costo;
    }

    public void setCosto(int costo) {
        this.costo = costo;
    }

    public boolean isHabilitada() {
        return habilitada;
    }

    public void setHabilitada(boolean habilitada) {
        this.habilitada = habilitada;
    }

    public Cliente getPersona() {
        return persona;
    }

    public void setPersona(Cliente persona) {
        this.persona = persona;
    }

    public void incrementarC(int monto) {
    this.setCosto(this.getCosto()+ monto);
}

    
    
    @Override
    public String toString() {
        String aux= "Habitaciones{" + "costo=" + costo + ", habilitada=" + habilitada;
            if (persona != null){aux+=persona.toString();}
        return aux ;
    }
    
    
    
    
    
    
}
