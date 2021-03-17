/*
Cristian Fernández Jiménez
Ángel Gómez Ferrer
*/


package meetnmatch;

import java.util.*;

public final class Controlador {
    private static Controlador instance;
    private ObservablePista observable;
    private ObserverPista pull;
    private ObserverPistaModificador modificador;
    private ObserverPistaPush push;
    private ObserverPistaPush grafico;

    private Controlador(ObservablePista observable, ObserverPista pull, ObserverPistaPush push, ObserverPistaModificador modificador,ObserverPistaPush grafico){
        this.observable= observable;
        this.pull= pull;
        this.push= push;
        this.modificador= modificador;
        this.grafico=grafico;

    }

    public static Controlador getInstance(ObservablePista observable, ObserverPista pull, ObserverPistaPush push, ObserverPistaModificador modificador,ObserverPistaPush grafico){
        if(instance == null){
            instance = new Controlador(observable, pull, push, modificador,grafico);
        }
        return instance;
    }

    public static Controlador getInstance(){
        return instance;
    }

    public void reinciarMarcador(){
        modificador.modificarDatos(0,0);
    }

    public Integer getPuntuacion(String observador, String Equipo){
        
        switch (observador) {
            case "PUSH":
                if(Equipo.equals("LOCAL"))
                    return this.push.getPuntuacionLocal();
                else if(Equipo.equals("VISITANTE"))
                    return this.push.getPuntuacionVisitante();
                break;
            case "PULL":
                if(Equipo.equals("LOCAL"))
                    return this.pull.getPuntuacionLocal();
                else if(Equipo.equals("VISITANTE"))
                    return this.pull.getPuntuacionVisitante();
                break;
            case "MODIFICADOR":
                if(Equipo.equals("LOCAL"))
                    return this.modificador.getPuntuacionLocal();
                else if(Equipo.equals("VISITANTE"))
                    return this.modificador.getPuntuacionVisitante();
                break;
            case "PISTA":
                if(Equipo.equals("LOCAL"))
                    return this.observable.getPuntuacionLocal();
                else if(Equipo.equals("VISITANTE"))
                    return this.observable.getPuntuacionVisitante();
                break;
            case "GRAFICO":
            if(Equipo.equals("LOCAL"))
                return this.grafico.getPuntuacionLocal();
            else if(Equipo.equals("VISITANTE"))
                return this.grafico.getPuntuacionVisitante();
            break;
            default:
                break;
        }
        
        return 0;
        
    }
    
}
