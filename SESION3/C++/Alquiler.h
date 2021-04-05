#ifndef __Alquiler_h__
#define __Alquiler_h__

#include <string>

using namespace std;

class Alquiler
{
private: 
    int numeroJugadores;
    float precioTotal;
    string localizacion;

public:
    Alquiler(int numeroJug, string local);

    float getPrecioTotal(){return precioTotal;}

    float getNumeroJugadores(){return numeroJugadores;}

    void incrementarCoste(float incremento);

    string getLocalizacion(){return localizacion;}

};


#endif
