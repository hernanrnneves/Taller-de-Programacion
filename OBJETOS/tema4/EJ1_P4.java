
package tema4;
import PaqueteLectura.Lector;
public class EJ1_P4 {

    public static void main(String[] args) {
        System.out.println ("ingrese los 3 lados del triangulo ");
        int L1=Lector.leerInt(),L2=Lector.leerInt(),L3=Lector.leerInt();
        System.out.println("COLOR LADO ");
        String colorL=Lector.leerString();
        System.out.println("COLOR RELLENO ");
        String colorR=Lector.leerString();
        Triangulo t= new Triangulo (L1,L2,L3,colorR, colorL );
        System.out.println (t.toString());
        // imprimo triangulo
        
        System.out.println("COLOR LADO ");
        colorL=Lector.leerString();
        System.out.println("COLOR RELLENO ");
        colorR=Lector.leerString();
        System.out.println("leer radio: ");
        Double rad=Lector.leerDouble();
        Circulo c= new Circulo (rad, colorR, colorL);
        System.out.println (c.toString());
        
        t.despintar();
        c.despintar();
        
        System.out.println (t.toString());
        System.out.println (c.toString());
        
    }
    
}
