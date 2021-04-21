import 'package:practica2/alquiler.dart';
import 'package:flutter/material.dart';
abstract class EstrategiaPago{

    EstrategiaPago(){}

    void realizarPago(Alquiler alq, BuildContext context);
}