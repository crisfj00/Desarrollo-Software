package meetnmatch;

public class Cliente {
	public Factoria factoria1;
        public Factoria factoria2;
        
        public Cliente(){
            factoria1=new FactoriaFutbol();
            factoria2=new FactoriaTenis();

        }

	public EncuentroFutbol crearPartidoFutbol() {
                return (EncuentroFutbol)factoria1.crearPartido();
	}

	public EncuentroTenis crearPartidoTenis() {
                return (EncuentroTenis)factoria2.crearPartido();
	}
        
        public static void main(String[] args){
	Cliente m= new Cliente();
        Encuentro enc1, enc2;
	enc1=m.crearPartidoFutbol();
	enc2=m.crearPartidoTenis();
        
        enc1.comenzarEncuentro();
        enc2.comenzarEncuentro();
        
        
        

}
}

