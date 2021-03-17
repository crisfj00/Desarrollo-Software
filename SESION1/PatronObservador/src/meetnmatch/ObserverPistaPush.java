/*
Cristian Fernández Jiménez
Ángel Gómez Ferrer
*/


package meetnmatch;

import java.util.*;
import java.awt.Frame;



public class ObserverPistaPush extends Frame implements Observer {
	private int puntLocalObservada;
	private int puntVisitanteObservada;
        private String nombre;
	public ObservablePista sujetoObservable;

	public ObserverPistaPush (ObservablePista o,String nombre){
		this.sujetoObservable=o;
                this.nombre=nombre;
	}
	public int getPuntuacionLocal(){
		return puntLocalObservada;
	}
	
	public int getPuntuacionVisitante(){
		return puntVisitanteObservada;
	}


	public void update(Observable obs, Object obj) {
		if(obs==sujetoObservable){
			ArrayList<Integer> valores=(ArrayList<Integer>) obj;
			puntLocalObservada=valores.get(0);	
			puntVisitanteObservada=	valores.get(1);
		}
                
                System.out.println("\tPUSH ("+nombre+"):: \t"+puntLocalObservada+" - "+puntVisitanteObservada);
	}
}
