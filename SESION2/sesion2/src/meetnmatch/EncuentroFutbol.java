package meetnmatch;

public class EncuentroFutbol extends Encuentro {
	private String tipoSuelo;

	public EncuentroFutbol(String localizacion, String tipoSuelo) {
		super(localizacion,90);
		this.tipoSuelo=tipoSuelo;
                tipoEncuentro="futbol";
	}


	public void comenzarEncuentro(){
		super.comenzarEncuentro();
	}

}