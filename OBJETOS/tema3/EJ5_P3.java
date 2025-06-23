/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package tema3;

import PaqueteLectura.Lector;
public class EJ5_P3 {

   
    public static void main(String[] args) {
        double radio;
        String colorR, colorL;
        System.out.println ("ingresar radio:  ");
        radio=Lector.leerDouble();
        System.out.println("ingresar color relleno: ");
        colorR=Lector.leerString();
        System.out.println("ingresar color lado: " );
        colorL= Lector.leerString();
        Circulo c = new Circulo (radio, colorR, colorL);
        System.out.println ("su area es de: "+ c.calcularArea()+" su perimetro es de: "+ c.calcularPerimetro());
        
     
    }
    
}
