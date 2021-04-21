import 'package:practica2/filtro.dart';
import 'package:practica2/alquiler.dart';
import 'package:practica2/filtro-ubicacion.dart';
import 'package:practica2/filtro-jugadores.dart';

class GestorFiltros
{
    List<Filtro> lista_filtros=[];

    GestorFiltros(){
          FiltroJugadores f1=new FiltroJugadores();
          FiltroUbicacion f2=new FiltroUbicacion();
          lista_filtros.add(f1);
          lista_filtros.add(f2);
    }

    void aplicarFiltros(Alquiler alq){
        lista_filtros[0].aplicarFiltro(alq);
        lista_filtros[1].aplicarFiltro(alq);
    }

    bool existeUbicacion(String local, String deporte){
      return lista_filtros[0].existeUbicacion(local,deporte);
    }
}
