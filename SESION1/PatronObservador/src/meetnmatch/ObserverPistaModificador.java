/*
Cristian Fernández Jiménez
Ángel Gómez Ferrer
*/


package meetnmatch;

import java.util.*;
import java.awt.Frame;



public class ObserverPistaModificador extends Frame implements Observer {
	private int puntLocalObservada;
	private int puntVisitanteObservada;
	public ObservablePista sujetoObservable;

	public ObserverPistaModificador (ObservablePista o){
		this.sujetoObservable=o;
	}

	public void modificarDatos(Integer local, Integer visitante){
		this.sujetoObservable.setEstado(local,visitante);
	}

	public void update(Observable obs, Object obj) {
		if(obs==sujetoObservable){
			ArrayList<Integer> valores=(ArrayList<Integer>) obj;
			puntLocalObservada=valores.get(0);	
			puntVisitanteObservada=	valores.get(1);
		}
                
                System.out.println("\tMODIFICADOR (PUSH):: \t"+puntLocalObservada+" - "+puntVisitanteObservada);


	}
        
        public int getPuntuacionLocal(){
            return puntLocalObservada;
        }
        
        public int getPuntuacionVisitante(){
            return puntVisitanteObservada;
        }
}
