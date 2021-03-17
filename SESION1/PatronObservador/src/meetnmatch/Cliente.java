/*
Cristian Fernández Jiménez
Ángel Gómez Ferrer
*/

package meetnmatch;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import GUI.Vista;


public class Cliente extends Thread{

    ObserverPista observador; //PULL NO SUSCRITO
    ObservablePista observable; //MARCADOR A OBSERVAR
    ObserverPistaPush observadorPush; //PUSH SUSCRITO
    ObserverPistaModificador observadorModificador; //PUSH CON MODIFICACIONES
    ObserverPistaPush observadorGrafico;
    Vista gui;
    
    public Cliente(){
        observable=new ObservablePista();
        observador=new ObserverPista(observable);
        observadorPush=new ObserverPistaPush(observable,"NORMAL");
        observadorModificador=new ObserverPistaModificador(observable);
        observadorGrafico=new ObserverPistaPush(observable,"SOFISTICADO");
        observable.addObserver(observadorPush);
        observable.addObserver(observadorModificador);
        observable.addObserver(observadorGrafico);
        Controlador.getInstance(observable,observador,observadorPush,observadorModificador,observadorGrafico);

    }
    
    public void setVista(Vista gui2){
        gui=gui2;
        gui.setVisible(true);
        gui.actualizarVista();
    }

    public void run(){
        Random rnd = new Random();
        int puntLocal= 0;
        int puntVisitante= 0;
        int i=0;
        observador.start();
            while(true){
                puntLocal= rnd.nextInt(10 - 0);
                puntVisitante= rnd.nextInt(10 - 0);
            try {
                Thread.sleep(500);
            } catch (InterruptedException ex) {
                Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
            }
                observable.incrementarMarcador(puntLocal,puntVisitante);
                gui.actualizarVista();


            }
    
    }
    



    public static void main(String[] args){
            Cliente m= new Cliente();
            Vista gui=new Vista();
            m.setVista(gui);
            m.start();
                   
    }
}
