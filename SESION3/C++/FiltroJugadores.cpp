using namespace std;

#include "FiltroJugadores.h"
#include "Alquiler.h"
#include "Ubicacion.h"
#include "Filtro.h"
#include <string>

void FiltroJugadores::aplicarFiltro(Alquiler & alq) {

    
    string loc= alq.getLocalizacion();

    for( auto item : ubicaciones){
        if(item.getLocalizacion() == loc){
            alq.incrementarCoste(item.getPrecioJugador()*alq.getNumeroJugadores()); //Precio por numero de jugadores
        }
    }


}

