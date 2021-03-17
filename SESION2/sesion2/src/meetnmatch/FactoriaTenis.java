package meetnmatch;

import java.util.*;

public class FactoriaTenis implements Factoria {

    @Override
	public EncuentroTenis crearPartido() {
		EncuentroTenis enc=new EncuentroTenis("Polideportivo",1.2);

		enc.apuntarseLocal(new JugadorTenis("John",15,"11111111A","Zurdo",1.78));
		enc.apuntarseVisitante(new JugadorTenis("Michael",16,"11112115A", "Diestro",1.7));
                
                return enc;

	}
}