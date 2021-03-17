package meetnmatch;

public class JugadorTenis extends Jugador {
	private final String manoDominante;
	private final double envergadura;


	public JugadorTenis(String nombre, int edad, String dni,String mano, double enver){
		super(nombre,edad,dni);
		this.manoDominante=mano;
		this.envergadura=enver;
                tipoJugador="tenis";
				minutos=120;

	}

	public void accion(){
		matchPoint();
	}

	public void matchPoint() {
		System.out.println("Jugador " + nombre + " gana el partido con un Match Point. ("+getId()+")");
		if(encuentro.isAlive()){
                        this.stop();
		}

	}
}
        
