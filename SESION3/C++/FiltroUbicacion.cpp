using namespace std;

#include "FiltroUbicacion.h"
#include "Ubicacion.h"
#include "Alquiler.h"
#include "Filtro.h"



void FiltroUbicacion::aplicarFiltro(Alquiler &alq) {

    string loc= alq.getLocalizacion();

    for( auto item : ubicaciones){
        if(item.getLocalizacion() == loc){
            alq.incrementarCoste(item.getPrecioBase());
        }
    }

}


