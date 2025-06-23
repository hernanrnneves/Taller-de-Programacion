package tema3;

import PaqueteLectura.Lector;
import PaqueteLectura.GeneradorAleatorio;
public class ejer4_P3 {
    
    public static void main(String[] args) {
    int costo;
    boolean habilitada;
    Cliente persona;
    String nombre;
    int dni, edad;
    int n=Lector.leerInt();
    Habitaciones [] vector =new Habitaciones [n];
 
  
    
  for  (int i=0; i<n; i++ ){

   System.out.println ("ingresar costo " );
   costo=GeneradorAleatorio.generarInt(8000-2000) +2000;
   System.out.println ("ingresar si esta habilitada " );
   habilitada=Lector.leerBoolean();
        if (habilitada == false){
            System.out.println ("ingresar nombre " );
            nombre=Lector.leerString();
            System.out.println ("ingresar dni " );
            dni=Lector.leerInt();
            System.out.println ("ingresar edad " );
            edad=Lector.leerInt();
            
            persona = new Cliente (nombre, dni, edad);
            vector [i]= new Habitaciones (costo, habilitada, persona);
            
        } else { 
            vector[i]=new Habitaciones (costo, habilitada);
        }
  }  
   for  (int i=0; i<n; i++ ){
    vector [i].incrementarC(303);// llamo a incrementarC
   }
   for  (int i=0; i<n; i++ ){
    System.out.println (vector[i].toString());    //informo incrementado
   }
}
}