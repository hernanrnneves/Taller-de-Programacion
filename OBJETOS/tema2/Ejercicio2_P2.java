/*
Demo Envio de mensaje a un objeto string
 */
package tema2;

/**
 *
 * @author vsanz
 */
import PaqueteLectura.GeneradorAleatorio;
public class Ejercicio2_P2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Persona [] vector = new Persona [15]; //Instancio las 15 personas
        int i = 0;
        int contador = 0;
        int min = 999999;
        int min_pos = 0;
        String nombre = GeneradorAleatorio.generarString(4);
        int edad = GeneradorAleatorio.generarInt(100);
        int dni = GeneradorAleatorio.generarInt(100);
        
        
        System.out.println("listado de personas:");
        while(dni != 0 && i < 15){
            vector[i] = new Persona (nombre,dni,edad);
            System.out.println(vector[i].toString());
            if (vector[i].getEdad() > 65){contador++;} //si supera los 65 aumento contador
            
            if (vector[i].getDNI() < min){ // si su dni es mas chico lo guardo como nuevo minimo y su pos
                min = vector[i].getDNI();  
                min_pos = i;
                }
            i++;
            nombre = GeneradorAleatorio.generarString(4);
            edad = GeneradorAleatorio.generarInt(100);
            dni = GeneradorAleatorio.generarInt(100);
        }
       System.out.println("la cantidad de prsonas mayores a 65 fue: " + contador);
       System.out.println(vector[min_pos].toString());
    }
    
}
