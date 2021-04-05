using namespace std;

#ifndef __FiltroJugadores_h__
#define __FiltroJugadores_h__

#include "Alquiler.h"
#include "Filtro.h"



class FiltroJugadores : Filtro
{

    public: 
        FiltroJugadores(){}
        void aplicarFiltro(Alquiler &alq);
};


#endif
