import 'package:flutter/material.dart';
import 'package:sesion_3_ds/alquiler.dart';
import 'package:sesion_3_ds/gestor-filtros.dart';




void main() {
  //runApp(MyApp());
  Cliente cliente= new Cliente();

  print('4 jugadores alquilan el Polideportivo Maracena: ${cliente.alquilarUbicacion(4,"Polideportivo Maracena")}€\n');
  print('22 jugadores alquilan el Campo de Futbol de Granada: ${cliente.alquilarUbicacion(22,"Campo de Futbol Granada")}€\n');
  print('4 jugadores alquilan Pista de Tenis Atarfe: ${cliente.alquilarUbicacion(4,"Pista Tenis Atarfe")}€\n');
  print('4 jugadores alquilan la Pista de Tenis Albolote: ${cliente.alquilarUbicacion(4,"Pista de Tenis Albolote")}€\n');
  print('14 jugadores alquilan la Pista de Futbol Illora: ${cliente.alquilarUbicacion(14,"Pista de Futbol Illora")}€\n');
  print('2 jugadores alquilan la Pista de Tenis de Cogollos: ${cliente.alquilarUbicacion(2,"Pista de Tenis de Cogollos")}€\n');

  cliente.calcularEstadistico();


}

class Cliente {
  GestorFiltros gestor= new GestorFiltros();
  double totalAlquileres=0;
  double precioMedioTotal=0;
  double precioMedioJugador=0;
  int participacionesTotales=0;
  int alquileresTotales=0;

  double alquilarUbicacion(int numJug, String localizacion){
    Alquiler alq= new Alquiler(numJug, localizacion);
    alq.incrementarCoste(1); //Coste Base por usar la APP
    gestor.aplicarFiltros(alq); //Costes Extras que dependerán de la ubicación
    totalAlquileres+=alq.getPrecioTotal();
    participacionesTotales+=numJug;
    alquileresTotales+=1;
    return alq.getPrecioTotal();
  }
  void calcularEstadistico(){
    precioMedioTotal= totalAlquileres/alquileresTotales;
    precioMedioJugador= totalAlquileres/participacionesTotales;

    print('\n\nEn el día de hoy se han realizado $alquileresTotales alquileres, con un coste medio de $precioMedioTotal\n');
    print('Cada jugador participante ha pagado de media $precioMedioJugador por disfrutar de un encuentro deportivo\n');
  }
}


