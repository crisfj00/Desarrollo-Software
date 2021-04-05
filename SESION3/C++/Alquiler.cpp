#include "Alquiler.h"

    Alquiler::Alquiler(int numeroJug, string local){
        numeroJugadores=numeroJug;
        localizacion=local;
    }

    void Alquiler::incrementarCoste(float incremento){
        precioTotal+=incremento;
    }