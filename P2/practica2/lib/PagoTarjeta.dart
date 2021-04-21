import 'package:flutter/cupertino.dart';
import 'package:practica2/alquiler.dart';
import 'package:practica2/EstrategiaPago.dart';
import 'package:flutter/material.dart';
import 'package:practica2/main.dart';

class PagoTarjeta extends EstrategiaPago {

  int numeroTarjeta;
  String nombreTitular;
  int codVerificacion;


  PagoTarjeta(int num, String nom, int cod){
    numeroTarjeta=num;
    nombreTitular=nom;
    codVerificacion=cod;
  }

  void realizarPago(Alquiler alq, BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {  Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FirstRoute()),
      ); },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Pago realizado!"),
      content: Text("El pago mediante Tarjeta se ha realizado con éxito.\n - El número de tarjeta: "+numeroTarjeta.toString()+"\n - Reservado en: "+alq.getLocalizacion() + " con fecha: "+ alq.getFecha()+ " para "+ alq.getNumeroJugadores().toString() + " jugadores."),
      actions: [
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
    }

  }