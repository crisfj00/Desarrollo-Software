#include "cliente.h"
#include "GestorFiltros.h"
#include "Alquiler.h"
#include <iostream>
using namespace std;

    float Cliente::alquilarUbicacion(int numJug, string localizacion){
        Alquiler alq(numJug,localizacion);
        alq.incrementarCoste(1); //Coste Base por usar la APP
        gestor.aplicarFiltros(alq); //Costes Extras que dependerán de la ubicación
        totalAlquileres+=alq.getPrecioTotal();
        participacionesTotales+=numJug;
        alquileresTotales+=1;
        return alq.getPrecioTotal();
    }

    void Cliente::calcularEstadistico(){
        precioMedioTotal= totalAlquileres/alquileresTotales;
        precioMedioJugador= totalAlquileres/participacionesTotales;

        cout << "En el día de hoy se han realizado " << alquileresTotales << " con un coste medio de " << precioMedioTotal << endl;
        cout << "Cada jugador participante ha pagado de media " << precioMedioJugador << " por disfrutar de un encuentro deportivo" << endl;
    }


int main()
{
    Cliente cliente;

    cout <<"4 jugadores alquilan el Polideportivo Maracena: " << cliente.alquilarUbicacion(4,"Polideportivo Maracena") << "€" << endl << endl;

    cout <<"22 jugadores alquilan el Campo de Futbol de Granada: " << cliente.alquilarUbicacion(22,"Campo de Futbol Granada") << "€" << endl << endl;

    cout <<"4 jugadores alquilan Pista de Tenis Atarfe: " << cliente.alquilarUbicacion(4,"Pista Tenis Atarfe") << "€" << endl << endl;
    cout <<"4 jugadores alquilan la Pista de Tenis Albolote: " << cliente.alquilarUbicacion(4,"Pista de Tenis Albolote") << "€" << endl << endl;
    cout <<"14 jugadores alquilan la Pista de Futbol Illora: " << cliente.alquilarUbicacion(14,"Pista de Futbol Illora") << "€" << endl << endl;
    cout <<"2 jugadores alquilan la Pista de Tenis de Cogollos: " << cliente.alquilarUbicacion(2,"Pista de Tenis de Cogollos") << "€" << endl << endl;

    cliente.calcularEstadistico();



}