
package tema4;

public class Triangulo extends Figura {
    private int l1, l2, l3;

    public Triangulo(int l1, int l2, int l3, String unCR, String unCL) {
        super(unCR, unCL);
        this.l1 = l1;
        this.l2 = l2;
        this.l3 = l3;
    }

    public int getL1() {
        return l1;
    }

    public void setL1(int l1) {
        this.l1 = l1;
    }

    public int getL2() {
        return l2;
    }

    public void setL2(int l2) {
        this.l2 = l2;
    }

    public int getL3() {
        return l3;
    }

    public void setL3(int l3) {
        this.l3 = l3;
    }

   
    public Double calcularArea(){
        double s = (this.getL1() + this.getL2() + this.getL3() )%2;
        return (Math.sqrt(s*(s-this.getL1())*(s-this.getL2())*(s-this.getL3())));
    }

    @Override
    public Double calcularPerimetro (){
    return l1+l2+l3 + 0.0;
    }
    
  
    @Override
    public String toString() {
        return "Triangulo{" + "l1=" + l1 + ", l2=" + l2 + ", l3=" + l3 + "su area es de: " +super.toString();
    }
    
    
    
    
}
