/*
Cristian Fernández Jiménez
Ángel Gómez Ferrer
*/


package meetnmatch;

import java.util.*;
import java.awt.Frame;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ObserverPista extends Thread implements Observer {
	private int puntLocalObservada;
	private int puntVisitanteObservada;
	public ObservablePista sujetoObservable;

	public ObserverPista (ObservablePista o){
		this.sujetoObservable=o;
	}

	public void preguntarDatos(){
		puntLocalObservada=sujetoObservable.getPuntuacionLocal();		
		puntVisitanteObservada=sujetoObservable.getPuntuacionVisitante();	
		
		System.out.println("\tEstrategia PULL:: \t"+puntLocalObservada+" - "+puntVisitanteObservada);

	}

	public void update(Observable obs, Object obj) {

	}

        @Override public void run(){
		while(true){
			preguntarDatos();
		try {
			Thread.sleep(2000);
		} catch (InterruptedException ex) {
			Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
		}
                }
	}
        
        public int getPuntuacionLocal(){
            return puntLocalObservada;
        }
        
        public int getPuntuacionVisitante(){
            return puntVisitanteObservada;
        }

}
