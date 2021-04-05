import 'package:sesion_3_ds/ubicacion.dart';
import 'package:sesion_3_ds/alquiler.dart';

abstract class Filtro{


    List<Ubicacion> ubicaciones=[];

 
    Filtro(){
        Ubicacion maracena=new Ubicacion("Polideportivo Maracena", 4.5, 0);
        Ubicacion granada=new Ubicacion("Campo de Futbol Granada", 20, 3);
        Ubicacion atarfe=new Ubicacion("Pista Tenis Atarfe",0,0);
        Ubicacion albolote=new Ubicacion("Pista de Tenis Albolote", 7, 1);
        Ubicacion illora=new Ubicacion("Pista de Futbol Illora", 5, 2);
        Ubicacion cogollos=new Ubicacion("Pista de Tenis de Cogollos", 6, 0);

        ubicaciones.add(maracena);
        ubicaciones.add(granada);    
        ubicaciones.add(atarfe);
        ubicaciones.add(albolote);
        ubicaciones.add(illora);
        ubicaciones.add(cogollos);
    }
    
    void aplicarFiltro(Alquiler alq);
}