import 'package:practica2/gestor-filtros.dart';
import 'package:practica2/alquiler.dart';

class GestorAlquileres {
  GestorFiltros gestor = new GestorFiltros();
  static List<Alquiler> alquileres = [];

  static final GestorAlquileres _GestorAlquileres = GestorAlquileres._internal();

  factory GestorAlquileres() {

    return _GestorAlquileres;
  }

  GestorAlquileres._internal(){

    Alquiler maracena =
    new Alquiler(14, "Polideportivo Maracena", "13/05 11:00", "futbol");
    Alquiler granada =
    new Alquiler(22, "Campo de Futbol Granada", "13/05 12:00", "futbol");
    Alquiler atarfe =
    new Alquiler(2, "Pista Tenis Atarfe", "13/05 13:00", "tenis");
    Alquiler albolote =
    new Alquiler(4, "Pista de Tenis Albolote", "19/05 18:00", "tenis");
    Alquiler illora =
    new Alquiler(6, "Pista de Futbol Illora", "18/05 17:00", "futbol");
    Alquiler cogollos =
    new Alquiler(4, "Pista de Tenis de Cogollos", "17/05 12:00", "tenis");

    alquileres.add(maracena);
    alquileres.add(granada);
    alquileres.add(atarfe);
    alquileres.add(albolote);
    alquileres.add(illora);
    alquileres.add(cogollos);
  }

// "DD/MM HH:mm"
  double alquilarUbicacion(int numJug, String localizacion, String fecha, String deporte) {
    if (!gestor.existeUbicacion(localizacion, deporte))
      return -1;


    for (final x in alquileres) {
      if (x.getLocalizacion() == localizacion && x.getFecha() == fecha)
        return 0;
    }

    Alquiler alq = new Alquiler(numJug, localizacion, fecha, deporte);
    alquileres.add(alq);
    alq.incrementarCoste(1); //Coste Base por usar la APP
    gestor.aplicarFiltros(alq); //Costes Extras que dependerán de la ubicación
    return alq.getPrecioTotal();
  }

  void noRealizarOperacion(){
    alquileres.removeLast();
  }
}
