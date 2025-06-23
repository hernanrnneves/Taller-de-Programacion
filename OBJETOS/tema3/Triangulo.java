/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema3;

/**
 *
 * @author Administrator
 */
public class Triangulo {
    private int L1, L2, L3; 
    private String colorR;  
    private String ColorL;

   

    public Triangulo(int L1, int L2, int L3, String colorR, String ColorL) {
        this.L1 = L1;
        this.L2 = L2;
        this.L3 = L3;
        this.colorR = colorR;
        this.ColorL = ColorL;
    }

    @Override
    public String toString() {
        return "Triangulo{" + "L1=" + L1 + ", L2=" + L2 + ", L3=" + L3 + ", colorR=" + colorR + ", ColorL=" + ColorL + '}';
    }

   
    public int calcularPerimetro(){
        return (this.getL1() + this.getL2() + this.getL3());
    }
    
    public Double calcularArea(){
        
        double s = (L1 + L2 + L3 )%2;
        return (Math.sqrt(s*(s-L1)*(s-L2)*(s-L3)));
    }
    
    
    
    
    
    
    
    public int getL1() {
        return L1;
    }

    public void setL1(int L1) {
        this.L1 = L1;
    }

    public int getL2() {
        return L2;
    }

    public void setL2(int unL2) {
        L2 = unL2;
    }

    public int getL3() {
        return L3;
    }

    public void setL3(int L3) {
        this.L3 = L3;
    }

    public String getColorR() {
        return colorR;
    }

    public void setColorR(String colorR) {
        this.colorR = colorR;
    }

    public String getColorL() {
        return ColorL;
    }

    public void setColorL(String ColorL) {
        this.ColorL = ColorL;
    }
   
  
    
   
    
}
