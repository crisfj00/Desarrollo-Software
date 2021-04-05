
#ifndef __Ubicacion_h__
#define __Ubicacion_h__

#include <string>

using namespace std;


class Ubicacion
{
private: 
    string localizacion;
    float precioBase;
    float precioJugador;
public:

    Ubicacion(string local, float precioB, float precioJ);

    float getPrecioBase(){return precioBase;}

    float getPrecioJugador(){return precioJugador;}

    string getLocalizacion(){return localizacion;}

};


#endif
