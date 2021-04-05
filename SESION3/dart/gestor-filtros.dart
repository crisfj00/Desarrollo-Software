import 'package:sesion_3_ds/ubicacion.dart';
import 'package:sesion_3_ds/filtro.dart';
import 'package:sesion_3_ds/alquiler.dart';
import 'package:sesion_3_ds/filtro-ubicacion.dart';
import 'package:sesion_3_ds/filtro-jugadores.dart';

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
}
