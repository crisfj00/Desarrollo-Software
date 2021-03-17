package meetnmatch;

import java.util.*;

public class FactoriaFutbol implements Factoria {

        @Override
	public EncuentroFutbol crearPartido() {
		EncuentroFutbol enc=new EncuentroFutbol("Polideportivo","Cesped");
                
                enc.apuntarseLocal(new JugadorFutbol("Pepe",15,"11111111A",14,"Delantero"));
                enc.apuntarseLocal(new JugadorFutbol("Adolfo",16,"12111111A",11,"Defensa Dch"));
                enc.apuntarseLocal(new JugadorFutbol("Domingo",17,"13111111A",5,"Defensa Izq"));
                enc.apuntarseLocal(new JugadorFutbol("Alex",15,"11114111A",3,"Centro"));
                enc.apuntarseLocal(new JugadorFutbol("Antonio",15,"15111111A",1,"Portero"));
                
                
                enc.apuntarseVisitante(new JugadorFutbol("Manuel",15,"11112111A",14,"Delantero"));
                enc.apuntarseVisitante(new JugadorFutbol("Marco",16,"12113111A",11,"Defensa Dch"));
                enc.apuntarseVisitante(new JugadorFutbol("Juan",17,"13141111A",5,"Defensa Izq"));
                enc.apuntarseVisitante(new JugadorFutbol("Alejandro",15,"11114131A",3,"Centro"));
                enc.apuntarseVisitante(new JugadorFutbol("Antonio",15,"15121111A",1,"Portero"));
                
                return enc;
	}
}