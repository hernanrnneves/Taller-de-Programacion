
package tema4;


public class Trabajador extends Persona {
    
    private String actividad;

    public Trabajador(String actividad, String nombre, int dni, int edad) {
        super(nombre, dni, edad);
        this.actividad = actividad;
    }

    public String getActividad() {
        return actividad;
    }

    public void setActividad(String actividad) {
        this.actividad = actividad;
    }

    @Override
    public String toString() {
       String aux = "el nombre es: "+this.getNombre()+ " el dni es:  "+ this.getDni()+ " y la edad es: "+ this.getEdad();
              if (actividad != null){
              aux+= " y su trabajo es: "+ actividad;
              }
    return (aux);
    } 
    
    
    
}
