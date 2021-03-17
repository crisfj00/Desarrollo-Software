package meetnmatch;

public class JugadorFutbol extends Jugador {
	private final int dorsal;
	private final String posicion;
	private final int golesMarcados=0;

	public JugadorFutbol(String nombre, int edad, String dni,int dorsal, String posicion) {
		super(nombre,edad,dni);
		this.dorsal=dorsal;
		this.posicion=posicion;
                tipoJugador="fútbol";
				minutos=90;
	}

	public void esDestituido() {
		System.out.println("El jugador "+ this.nombre + " ha sido destituido("+getId()+")");
		this.stop();
	}
        
        public void accion(){
            esDestituido();
        }
        

}