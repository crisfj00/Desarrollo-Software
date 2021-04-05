using namespace std;

#ifndef __cliente_h__
#define __cliente_h__

 #include "GestorFiltros.h"


class Cliente
{
private: 
    GestorFiltros gestor;
    float totalAlquileres=0;
    float precioMedioTotal=0;
    float precioMedioJugador=0;
    int participacionesTotales=0;
    int alquileresTotales=0;

public: 
    float alquilarUbicacion(int numJug, string localizacion);
    void calcularEstadistico();
};


#endif
