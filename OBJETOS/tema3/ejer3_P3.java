/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package tema3;

/**
 *
 * @author Administrator
 */
import PaqueteLectura.Lector;
import PaqueteLectura.GeneradorAleatorio;
public class ejer3_P3 {
    public static void main(String[] args) {
    Estantes  e = new Estantes(5);    
     
      for(int i=0; i<2; i++){ 
       // leo autores
       System.out.println ("STRING"); 
       String nombre=GeneradorAleatorio.generarString(3); 
       System.out.println ("STRING"); 
       String bibliografia=GeneradorAleatorio.generarString(3);
System.out.println ("STRING");       
       String origen= GeneradorAleatorio.generarString(3);
       
        
        // leo libros
       System.out.println ("STRING");
        String titulo= GeneradorAleatorio.generarString(3);
        System.out.println ("STRING");
        String editorial= GeneradorAleatorio.generarString(3);
        System.out.println ("INT");
        int anoEdicion=Lector.leerInt();
        System.out.println ("STRING");
        String ISBN= GeneradorAleatorio.generarString(3);
      System.out.println ("DOYBLE");
        double precio=Lector.leerDouble();     
       
       Autor autores = new Autor(nombre, bibliografia, origen);
       Libro libro = new Libro(titulo, autores ,editorial, anoEdicion, ISBN, precio );
       
        e.agregarLibro(libro);
      
      }                       
  if (e.getDevolver("mujercitas") == null) {
    System.out.println("No existe");
} else {
    System.out.println(e.getDevolver("mujercitas").getPrimerAutor());
}

}
}
    

