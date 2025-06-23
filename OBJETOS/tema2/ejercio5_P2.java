/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema2;

/**
 *
 * @author Administrator
 */
import PaqueteLectura.Lector;
public class ejercio5_P2 {
    
  public static void main(String[] args){
    Partido [] historial = new  Partido [20];
    String local= Lector.leerString(), visitante= Lector.leerString();
    int golesL= Lector.leerInt(), golesV = Lector.leerInt();
    int river=0, boca =0,i=0; 
            
    while (!visitante.equals("ZZZ") && i < 20) {
        historial[i] = new Partido (local,visitante,golesL, golesV);
        i++;
        System.out.println("proximo partido");
        local= Lector.leerString(); 
        visitante= Lector.leerString();
        golesL= Lector.leerInt() ;
        golesV = Lector.leerInt();
        
    }
    //Termino la carga de partidos
    for (int aux=0;aux<=i;aux++){
       if (historial[aux] != null){
       if (historial [aux].getGanador().equals("river")){river++;}  
       if (historial[aux].getLocal().equals("boca")) {boca+= historial[aux].getGolesLocal(); }
       System.out.println(historial [aux].toString());
       }
    }   
    
    System.out.println("River gano: "+ river + " partidos  y boca anoto :" + boca + " goles de local");
  }
    
    
    
    
    }

