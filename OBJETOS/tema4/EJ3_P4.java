
package tema4;
import PaqueteLectura.GeneradorAleatorio;
public class EJ3_P4 {

    public static void main(String[] args) {
       int dni=GeneradorAleatorio.generarInt(232442);
       int edad=GeneradorAleatorio.generarInt(99);
       String nombre = GeneradorAleatorio.generarString(7);
       Persona p= new Persona (nombre,dni,edad);
       System.out.println(p.toString());
       
       dni=GeneradorAleatorio.generarInt(232442);
       edad=GeneradorAleatorio.generarInt(99);
       nombre = GeneradorAleatorio.generarString(7);
       String oficio=GeneradorAleatorio.generarString(5);
       Trabajador T= new Trabajador ( oficio,nombre, dni, edad);
       System.out.println (T.toString());
       
       
    }
    
}
