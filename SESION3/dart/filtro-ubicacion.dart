import 'package:sesion_3_ds/filtro.dart';
import 'package:sesion_3_ds/alquiler.dart';

class FiltroUbicacion extends Filtro {
  FiltroUbicacion(){}

  void aplicarFiltro(Alquiler alq) {
    String loc = alq.getLocalizacion();
    
    for (final x in ubicaciones){
      if (x.getLocalizacion() == loc) 
        alq.incrementarCoste(x.getPrecioBase());
    }
    
  }

