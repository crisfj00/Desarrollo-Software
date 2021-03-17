package meetnmatch;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.lang.*;

public abstract class Jugador extends Thread {
	protected String nombre;
	private int edad;
	private String dni;
	public Encuentro encuentro;
    protected String tipoJugador;
	protected int minutos;

	public Jugador(String nombre, int edad, String dni) {
		this.nombre=nombre;
		this.edad=edad;
		this.dni=dni;
	}

	public void jugar(int minutos, Encuentro encuentro){
		this.encuentro= encuentro;
                start();

	}
        
        public abstract void accion();

	@Override
	public void run(){
		System.out.println("El jugador de " + tipoJugador + " "+ nombre + " empieza a jugar.(" + getId() + ")");
                    try {

                        if(tipoJugador=="futbol"){
                            sleep(minutos*100/2);
                                if(getId()%2==0){
                                        accion();
                                }
                                else
                            	sleep(minutos*100/2);
                        }
                        else{
                                sleep(minutos*100);

                                if(getId()%2==0)
                                        accion();
                            
                        }

						


                    } catch (InterruptedException ex) {
                        Logger.getLogger(Jugador.class.getName()).log(Level.SEVERE, null, ex);
                    }
		
		System.out.println("El jugador "+ nombre + " termina de jugar.(" + getId() + ")");
		
	}
	
}