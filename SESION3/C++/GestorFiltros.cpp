
#include "GestorFiltros.h"
using namespace std;




    void GestorFiltros::aplicarFiltros(Alquiler & alq) {
        f1.aplicarFiltro(alq);
        f2.aplicarFiltro(alq);
    }

