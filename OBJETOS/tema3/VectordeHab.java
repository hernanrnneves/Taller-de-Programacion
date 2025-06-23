/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema3;

/**
 *
 * @author Administrator
 */
public class VectordeHab {
  private int dimF;
  private Habitaciones [] pieza = new Habitaciones [dimF] ;
  private int dmiL=0;

    public VectordeHab(Habitaciones[] pieza) {
        this.pieza = pieza;
    }

    public int getDimF() {
        return dimF;
    }

    public void setDimF(int dimF) {
        this.dimF = dimF;
    }
   public VectordeHab( int ene) {
        dimL=ene;
    }
  
  
public boolean agregarPersona(Habitaciones p) {
    if (dimL != dimF) {
        pieza[dimL] = p;
        dimL++;
    }
    return (dimL != dimF );
}

 public VectordeHab ingresarCli  (Cliente C, int Hab){
 return (pieza[hab]= c);
 }  
 
 public void incrementarM (int monto){
     for (int i=0; i<dimL ; i++){
     pieza[i].getCosto()= pieza[i].getCosto()+ monto;
     }
 
 }
   
  public Habitaciones[] getPieza() {
        return pieza;
    }

    public void setPieza(Habitaciones[] pieza) {
        this.pieza = pieza;
    }

    public int getDmiL() {
        return dmiL;
    }

    public void setDmiL(int dmiL) {
        this.dmiL = dmiL;
    }

    @Override
    public String toString() {
        return "VectordeHab{" + "dimF=" + dimF + ", pieza=" + pieza.toString() + ", dmiL=" + dmiL + '}';
    }
 
    
    
    
    
    
    
    
}
