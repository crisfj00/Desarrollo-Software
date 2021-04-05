#include "Filtro.h"


Filtro::Filtro(){
        Ubicacion maracena("Polideportivo Maracena", 4.5, 0);
        Ubicacion granada("Campo de Futbol Granada", 20, 3);
        Ubicacion atarfe("Pista Tenis Atarfe",0,0);
        Ubicacion albolote("Pista de Tenis Albolote", 7, 1);
        Ubicacion illora("Pista de Futbol Illora", 5, 2);
        Ubicacion cogollos("Pista de Tenis de Cogollos", 6, 0);

        ubicaciones.push_back(maracena);
        ubicaciones.push_back(granada);    
        ubicaciones.push_back(atarfe);
        ubicaciones.push_back(albolote);
        ubicaciones.push_back(illora);
        ubicaciones.push_back(cogollos);

}