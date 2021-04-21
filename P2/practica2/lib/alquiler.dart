class Alquiler {
  int numeroJugadores = 0;
  double precioTotal = 0;
  String localizacion = "";
  String fecha;
  String deporte = "";

  Alquiler(int numeroJug, String local, String fecha, String depor) {
    numeroJugadores = numeroJug;
    localizacion = local;
    this.fecha = fecha;
    deporte=depor;
  }

  double getPrecioTotal() {
    return precioTotal;
  }

  int getNumeroJugadores() {
    return numeroJugadores;
  }

  void incrementarCoste(double incremento) {
    precioTotal += incremento;
  }

  String getLocalizacion() {
    return localizacion;
  }

  String getFecha() {
    return fecha;
  }
}
