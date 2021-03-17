package meetnmatch;

import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.lang.*;

public abstract class Encuentro extends Thread {
	private ArrayList<Jugador> equipoLocal;
	private ArrayList<Jugador> equipoVisitante;
	private String localizacion;
	private int minutos;
	public Jugador participa;
        protected String tipoEncuentro;

	public Encuentro(String localizacion, int minutos) {
		this.localizacion=localizacion;
                this.minutos=minutos;
                equipoLocal=new ArrayList<Jugador>();
                equipoVisitante=new ArrayList<Jugador>();

	}

	public void apuntarseLocal(Jugador jug) {
                equipoLocal.add(jug);
	}

	public void apuntarseVisitante(Jugador jug) {
		equipoVisitante.add(jug);
	}

	public void lanzarJugadores(){
		for(int i=0; i<equipoLocal.size();i++)
			equipoLocal.get(i).jugar(this.minutos, this); 

		for(int i=0; i<equipoVisitante.size();i++)
			equipoVisitante.get(i).jugar(this.minutos, this); 
	}


	public void comenzarEncuentro(){
                start();
				lanzarJugadores();
	}







	@Override
	public void run(){
		System.out.println("Empieza el encuentro de " + tipoEncuentro+ " en " + localizacion);  
            try {
                Thread.sleep(minutos*100);
				
				boolean jugadoresVivos=true;

			while(jugadoresVivos){
				jugadoresVivos= false;
				for(int i=0; i<equipoLocal.size();i++)
					if(equipoLocal.get(i).isAlive()){
						jugadoresVivos = true;
					}
				for(int i=0; i<equipoVisitante.size();i++)
					if(equipoVisitante.get(i).isAlive()){
						jugadoresVivos = true;
					}
			}
				
            } catch (InterruptedException ex) {
                Logger.getLogger(Encuentro.class.getName()).log(Level.SEVERE, null, ex);
            }




		System.out.println("Finalizando encuentro de "+ tipoEncuentro + ".");
	
	}
}