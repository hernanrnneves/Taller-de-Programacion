
package tema4;

public class MainVisorModificado {

    public static void main(String[] args) {
    VisorFigurasModificado v= new VisorFigurasModificado();   
    
    Cuadrado c= new Cuadrado (2,"verde","amarillo");
    v.guardar(c);
    c= new Cuadrado (5, "verde", "fluo");
    v.guardar(c);
    Triangulo t= new Triangulo (2,4,6, "violeta", "amarillo");
    v.guardar(t);
    v.mostrar();
    }
    
}
