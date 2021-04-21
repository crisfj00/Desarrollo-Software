import 'package:practica2/alquiler.dart';
import 'package:practica2/EstrategiaPago.dart';
import 'package:flutter/material.dart';
import 'package:practica2/main.dart';

class PagoTransferencia extends EstrategiaPago {

  String nombreTitular;
  int numeroCuenta;


  PagoTransferencia(int num, String nom){
    numeroCuenta=num;
    nombreTitular=nom;
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
      content: Text("El pago mediante Transferencia se ha realizado con éxito.\n - El número de cuenta: "+numeroCuenta.toString()+"\n - Reservado en: "+alq.getLocalizacion() + " con fecha: "+ alq.getFecha()+ " para "+ alq.getNumeroJugadores().toString() + " jugadores."),
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