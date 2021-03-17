/*
Cristian Fernández Jiménez
Ángel Gómez Ferrer
*/


package meetnmatch;

import java.util.*;

public class ObservablePista extends Observable { //Estrategia PULL
	private int puntuacionLocal;
	private int puntuacionVisitante;

	
	public ObservablePista(){
		super();
		puntuacionLocal=0;
		puntuacionVisitante=0;
	}

	public int getPuntuacionLocal() {
		return this.puntuacionLocal;
	}

	public int getPuntuacionVisitante() {
		return this.puntuacionVisitante;
	}

	public void setEstado(int puntosLocal, int puntosVisitante) {
		puntuacionLocal=puntosLocal;
		puntuacionVisitante=puntosVisitante;
		setChanged();
		ArrayList<Integer> obj=new ArrayList<Integer>();
		obj.add(puntuacionLocal);
		obj.add(puntuacionVisitante);
		notifyObservers(obj);
	}

	public void incrementarMarcador(int local, int visita){
		puntuacionLocal+=local;
		puntuacionVisitante+=visita;
		System.out.println("MARCADOR:: \t\t\t|"+puntuacionLocal+" - "+puntuacionVisitante+"|");

		setChanged();
		ArrayList<Integer> obj=new ArrayList<Integer>();
		obj.add(puntuacionLocal);
		obj.add(puntuacionVisitante);
		notifyObservers(obj);
                
	}
}
