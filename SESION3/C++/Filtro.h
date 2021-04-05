using namespace std;

#ifndef __Filtro_h__
#define __Filtro_h__

#include "Alquiler.h"
#include "Ubicacion.h"
#include <vector>

class Filtro{

protected:
    vector<Ubicacion> ubicaciones;

public: 
    Filtro();
    virtual void aplicarFiltro(Alquiler & alq) = 0;
};

#endif
