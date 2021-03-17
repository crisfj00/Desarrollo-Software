package meetnmatch;

import java.util.*;
import java.awt.Frame;
import java.util.logging.Level;
import java.util.logging.Logger;


public abstract class ObserverCompuestoHijo extends ObserverCompuestoPadre implements Observer {
	private int puntLocalObservada;
	private int puntVisitanteObservada;
	public ObservablePista sujetoObservable;

	public ObserverAbstract (ObservablePista o){
		this.sujetoObservable=o;
	}

	public void preguntarDatos(){
		puntLocalObservada=sujetoObservable.getPuntuacionLocal();		
		puntVisitanteObservada=sujetoObservable.getPuntuacionVisitante();	
		
		System.out.println("\tObservador COmpuesto:: \t"+puntLocalObservada+" - "+puntVisitanteObservada);

	}


	




}