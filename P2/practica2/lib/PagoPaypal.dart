import 'package:practica2/EstrategiaPago.dart';
import 'package:practica2/alquiler.dart';
import 'package:flutter/material.dart';
import 'package:practica2/main.dart';

class PagoPaypal extends EstrategiaPago {
  String email;
  String nombre;

  PagoPaypal(String dir, String nombre) {
    this.email = dir;
    this.nombre = nombre;
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
      content: Text("El pago mediante Paypal se ha realizado con éxito.\n - La cuenta ingresada: "+email+"\n - Reservado en: "+alq.getLocalizacion() + " con fecha: "+ alq.getFecha()+ " para "+ alq.getNumeroJugadores().toString() + " jugadores."),
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