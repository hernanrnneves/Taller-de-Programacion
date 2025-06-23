
package tema4;

import PaqueteLectura.GeneradorAleatorio;
public class EJ2_P4 {
    public static void main(String[] args) {
       int partidos=GeneradorAleatorio.generarInt(20);
       int goles=GeneradorAleatorio.generarInt(10);
       int sueldo=GeneradorAleatorio.generarInt(20000);
       int antiguedad=GeneradorAleatorio.generarInt(10);
       String nombre="advincula ";
       
       Jugador j= new Jugador (partidos, goles, nombre, sueldo, antiguedad);
       
       sueldo=GeneradorAleatorio.generarInt(20000);
       antiguedad=GeneradorAleatorio.generarInt(10);
       nombre="jorge almiron";
       int campGanados=GeneradorAleatorio.generarInt(12);
       
        Entrenador e= new Entrenador (campGanados, nombre, sueldo, antiguedad);
   
    System.out.println(j.toString());
    System.out.println (e.toString());
    
    
    }
    
}
