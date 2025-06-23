/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tema2;

import PaqueteLectura.GeneradorAleatorio;
import PaqueteLectura.Lector;
/**
 *
 * @author Administrator
 */
public class Ejercicio3_P2 {
    
    public static void main(String[] args){
        Persona [][] calendario = new Persona [5] [8];
        String nombre = GeneradorAleatorio.generarString(4);
        int edad = GeneradorAleatorio.generarInt(100);
        int dni = GeneradorAleatorio.generarInt(100);
        int i=0 , j = 0;
        
        while(!nombre.equals("ZZZ") && i < 5 && j <8){
            calendario[i][j] = new Persona(nombre,dni,edad);
            if (j< 8){
                j++;
            }else{i++; j=0;}
                
            nombre = GeneradorAleatorio.generarString(5);
            edad = GeneradorAleatorio.generarInt(100);
            dni = GeneradorAleatorio.generarInt(100);
        }  
        
        //termino la inscripcion \\
        
          for (i = 0; i < 5; i++) {
            for (j = 0; j < 8; j++) {
                 if (calendario[i][j] != null) {System.out.println(calendario[i][j].toString());}
            }   
          }
        }
   }
