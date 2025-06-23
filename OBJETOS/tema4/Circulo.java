
package tema4;


public class Circulo extends Figura {
    private Double radio;

    public Circulo(Double radio, String unCR, String unCL) {
        super(unCR, unCL);
        this.radio = radio;
    }

    public Double getRadio() {
        return radio;
    }

    public void setRadio(Double radio) {
        this.radio = radio;
    }
   
    public Double calcularArea (){
    return Math.PI*(radio*radio);
    }
    
    public Double calcularPerimetro (){
    return 2*Math.PI*radio;
    
    }
    
    
   

    @Override
    public String toString() {
        return "Circulo{" + "radio=" + radio  + super.toString() ;
    }   
}
