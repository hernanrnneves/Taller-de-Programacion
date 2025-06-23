/*
Clase Libro a la cual se agregaron constructores. 
 */
package tema3;

/**
 *
 * @author vsanz
 */
public class Libro {
   private String titulo;
   private Autor primerAutor; 
   private String editorial;
   private int anoEdicion;
   private String ISBN; 
   private double precio; 
 
    
    public Libro(  String unTitulo,  String unaEditorial, 
    int unAnoEdicion, String unISBN, double unPrecio, Autor unPrimerAutor){
         titulo = unTitulo;
         editorial = unaEditorial; 
         anoEdicion= unAnoEdicion;
         primerAutor = unPrimerAutor;
         ISBN =  unISBN;
         precio = unPrecio;
    }
   

    public Libro(String titulo, Autor primerAutor, String editorial, int anoEdicion, String ISBN, double precio) {
        this.titulo = titulo;
        this.primerAutor = primerAutor;
        this.editorial = editorial;
        this.anoEdicion = anoEdicion;
        this.ISBN = ISBN;
        this.precio = precio;
    }

       
    public Libro(){
   
    }
        
    public String getTitulo(){
        return titulo;
    }
  
    public String getEditorial(){
        return editorial;
    }
    public int getAñoEdicion(){
        return anoEdicion;
    }
  
    public Autor getPrimerAutor(){
        return primerAutor;
    } 
    public String getISBN(){
        return ISBN;
    } 
    public double getPrecio(){
        return precio;
    }
   
    public void setTitulo(String unTitulo){
        titulo = unTitulo;
    }
   
    public void setEditorial(String unaEditorial){
         editorial = unaEditorial;
    }
    public void setAñoEdicion(int unAno){
         anoEdicion = unAno;
    }
   
   
    public void setISBN(String unISBN){
         ISBN=unISBN;
    } 
    public void setPrecio(double unPrecio){
         precio=unPrecio;
    }
   
    public String getRepresentacion (){
        return (primerAutor.toString());
    }
    
   @Override
    public String toString(){
        String aux;
        aux= "el titulo es: " + titulo + " por " + primerAutor.toString() + " - " + anoEdicion + " - " + " ISBN: " + ISBN ;
       return  aux;
    }
        
}
