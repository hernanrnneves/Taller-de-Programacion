/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema3;


public class Estantes {
   private int n; 
    private Libro [] libros = new Libro [n];
    private int dimL=0;
    
    public Libro[] getEstante() {
        return libros;
    }

    public void setEstante(Libro[] estante) {
        this.libros = estante;
    }

    public Estantes( int ene) {
        n=ene;
    }
            
    
    //i    
public int getCantidadLibros(){
    return (dimL );
   }  
    //ii
    public boolean getLleno () {
    return (dimL==n);
    }
    
    //iii
 public boolean agregarLibro (Libro A){
    
     if (dimL != n){
     libros[dimL]= A;
     dimL++;
     }
     return ((dimL-1) != n);
 }  
 public Libro getDevolver (String titu) {
    for (int i =0; i<dimL; i++){
        if (libros[i].getTitulo().equals(titu) ){
        return (libros[i]);
        }       
    }
 return (null);
 }

    @Override
    public String toString() {
        return "Estantes{" + "libros=" + libros[dimL-1].toString() + ", dimL " + dimL + '}';
    }
 
}