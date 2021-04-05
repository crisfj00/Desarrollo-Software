#include <exception>
using namespace std;

#ifndef __GestorFiltros_h__
#define __GestorFiltros_h__

#include "Alquiler.h"
#include "Filtro.h"
#include "FiltroJugadores.h"
#include "FiltroUbicacion.h"
#include <vector>

class GestorFiltros
{
private: 
    FiltroJugadores f1;
    FiltroUbicacion f2;
public: 

    GestorFiltros(){}

    void aplicarFiltros(Alquiler & alq);
};


#endif
