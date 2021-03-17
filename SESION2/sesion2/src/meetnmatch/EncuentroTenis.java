package meetnmatch;

public class EncuentroTenis extends Encuentro {
	private double alturaRed;

	public EncuentroTenis(String localizacion, double alturaRed) {
		super(localizacion,120);
		this.alturaRed=alturaRed;
                tipoEncuentro="tenis";
	}

        @Override
	public void comenzarEncuentro(){
		super.comenzarEncuentro();
	}

}