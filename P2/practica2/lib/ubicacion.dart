class Ubicacion {
  String localizacion;
  double precioBase;
  double precioJugador;
  String deporte;

  Ubicacion(String local, double pBase, double pJug, String deporte) {
    localizacion = local;
    precioBase = pBase;
    precioJugador = pJug;
    this.deporte = deporte;
  }

  double getPrecioBase() {
    return precioBase;
  }

  double getPrecioJugador() {
    return precioJugador;
  }

  String getLocalizacion() {
    return localizacion;
  }

  String getDeporte() {
    return deporte;
  }
}
