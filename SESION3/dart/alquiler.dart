class Alquiler
{
    int numeroJugadores= 0;
    double precioTotal= 0;
    String localizacion= "";

    Alquiler(int numeroJug, String local){
        numeroJugadores=numeroJug;
        localizacion=local;
    }

    double getPrecioTotal(){return precioTotal;}

    int getNumeroJugadores(){return numeroJugadores;}

    void incrementarCoste(double incremento){
        precioTotal+= incremento;
    }

    String getLocalizacion(){return localizacion;}

}