package tema4;


public class Cuadrado extends Figura{
    
    private double lado;
    
    public Cuadrado(double unLado, String unColorR, String unColorL){
        super(unColorR,unColorL);
        setLado(unLado);

    } 
    
    public double getLado(){
        return lado;       
    }
  
    public void setLado(double unLado){
        lado=unLado;
    }

    public Double calcularArea(){
       return (lado* getLado());
    }
    
    public Double calcularPerimetro(){
       return (getLado()*4);
    }
    @Override
    public String toString(){
       String aux = super.toString() + " Lado: " + getLado();
       return aux;
    }

 
}
