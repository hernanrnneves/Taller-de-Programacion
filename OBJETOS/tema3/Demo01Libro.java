/*
 Programa que instancia un objeto libro e inicializa sus v.i.s enviando mensajes set#
 */
package tema3;

/**
 *
 * @author vsanz
 */
import PaqueteLectura.Lector;

public class Demo01Libro {

    
    public static void main(String[] args) {
        
        // leo autores
        String nombre=Lector.leerString(); 
        String bibliografia=Lector.leerString();
        String origen= Lector.leerString();
       
        
        // leo libros
        String titulo= Lector.leerString();
        String editorial= Lector.leerString();
        int anoEdicion=Lector.leerInt();
        String ISBN= Lector.leerString(); 
        double precio=Lector.leerInt();     
       
       Autor autores = new Autor(nombre, bibliografia, origen);
       Libro libro = new Libro(titulo, autores ,editorial, anoEdicion, ISBN, precio );
       
       
       
       // informo todo
       
       System.out.println (libro.toString());
       
       

    }
}
   
