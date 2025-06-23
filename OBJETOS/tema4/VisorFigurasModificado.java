/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema4;

public class VisorFigurasModificado {
 private int guardadas=0;
 private int capacidadMaxima=5;
 private Figura [] v;

 public VisorFigurasModificado(){
   v = new Figura [capacidadMaxima];

 }

 public void guardar(Figura f){
     v[guardadas]= f;
     guardadas++;
 }
public boolean quedaEspacio(){
    return guardadas < capacidadMaxima;
 }

 public void mostrar(){
 for (int i=0; i< guardadas; i++){
    System.out.println (v[i].toString()); 
 }
 }
 public int getGuardadas() {
 return guardadas;
 }

}