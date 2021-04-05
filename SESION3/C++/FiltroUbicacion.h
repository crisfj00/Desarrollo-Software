
#ifndef __FiltroUbicacion_h__
#define __FiltroUbicacion_h__

#include "Alquiler.h"
#include "Filtro.h"
#include <string>
#include <vector>
#include "Ubicacion.h"

using namespace std;

class FiltroUbicacion : Filtro
{
private: 

public: 

    FiltroUbicacion(){}
    void aplicarFiltro(Alquiler &alq);
};


#endif
