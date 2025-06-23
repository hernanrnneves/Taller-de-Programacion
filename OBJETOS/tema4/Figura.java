
package tema4;


public abstract class Figura {
    private String colorRelleno;
    private String colorLinea;
   
    public Figura(String unCR, String unCL){
        setColorRelleno(unCR);
        setColorLinea(unCL);
    }
    
    @Override
    public String toString(){
        String aux ="su area es de: " + this.calcularArea ()+ "y su perimetro es de: "+ this.calcularPerimetro() +  
                " CR: "  + getColorRelleno() +  " CL: " + getColorLinea();             
             return aux;
       }

    
    public String getColorRelleno(){
        return colorRelleno;       
    }
    public void setColorRelleno(String unColor){
        colorRelleno = unColor;       
    }
    public String getColorLinea(){
        return colorLinea;       
    }
    public void setColorLinea(String unColor){
        colorLinea = unColor;       
    }
    
    public void despintar (){
    this.setColorLinea("negro");
    this.setColorRelleno("blanco");
    }
    
    
    public abstract Double calcularArea();
    public abstract Double calcularPerimetro();
     
}
