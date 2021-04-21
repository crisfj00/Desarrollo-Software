import 'package:practica2/ubicacion.dart';
import 'package:practica2/alquiler.dart';

abstract class Filtro{


    List<Ubicacion> ubicaciones=[];

 
    Filtro(){
        Ubicacion maracena=new Ubicacion("Polideportivo Maracena", 4.5, 0, "futbol");
        Ubicacion granada=new Ubicacion("Campo de Futbol Granada", 20, 3, "futbol");
        Ubicacion atarfe=new Ubicacion("Pista Tenis Atarfe",0,0, "tenis");
        Ubicacion albolote=new Ubicacion("Pista de Tenis Albolote", 7, 1, "tenis");
        Ubicacion illora=new Ubicacion("Pista de Futbol Illora", 5, 2, "futbol");
        Ubicacion cogollos=new Ubicacion("Pista de Tenis de Cogollos", 6, 0, "tenis");

        ubicaciones.add(maracena);
        ubicaciones.add(granada);    
        ubicaciones.add(atarfe);
        ubicaciones.add(albolote);
        ubicaciones.add(illora);
        ubicaciones.add(cogollos);
    }

    void aplicarFiltro(Alquiler alq);

  bool existeUbicacion(String local, String deporte) {
    bool existe = false;
    for (final x in ubicaciones) {
      if (x.getLocalizacion() == local && x.getDeporte() == deporte)
        existe = true;
    }
    return existe;
  }
}