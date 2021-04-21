import 'package:practica2/filtro.dart';
import 'package:practica2/alquiler.dart';

class FiltroUbicacion extends Filtro {
  FiltroUbicacion(){}

  void aplicarFiltro(Alquiler alq) {
    String loc = alq.getLocalizacion();
    
    for (final x in ubicaciones){
      if (x.getLocalizacion() == loc) 
        alq.incrementarCoste(x.getPrecioBase());
    }

  }
}
