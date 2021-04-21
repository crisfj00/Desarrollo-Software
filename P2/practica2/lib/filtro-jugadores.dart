import 'package:practica2/ubicacion.dart';
import 'package:practica2/filtro.dart';
import 'package:practica2/alquiler.dart';


class FiltroJugadores extends Filtro
{

        FiltroJugadores(){}
        
        void aplicarFiltro(Alquiler alq){

            String loc = alq.getLocalizacion();

            for (final x in ubicaciones){
              if (x.getLocalizacion() == loc)
                alq.incrementarCoste(x.getPrecioJugador()*alq.getNumeroJugadores());
            }

        }
}
