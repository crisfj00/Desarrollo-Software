class Ubicacion {

  String localizacion;
  double precioBase;
  double precioJugador;

  Ubicacion(String local, double pBase, double pJug){
    localizacion= local;
    precioBase= pBase;
    precioJugador= pJug;
  }

  double getPrecioBase(){ return precioBase; }
  double getPrecioJugador(){ return precioJugador; }
  String getLocalizacion(){ return localizacion; }

}