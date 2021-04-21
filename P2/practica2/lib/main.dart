import 'package:flutter/material.dart';
import 'package:practica2/PagoPaypal.dart';
import 'package:practica2/PagoTarjeta.dart';
import 'package:practica2/gestor-alquileres.dart';
import 'package:practica2/EstrategiaPago.dart';
import 'package:practica2/AlquilerActual.dart';
import 'package:practica2/PagoTransferencia.dart';


void main() {

  runApp(MaterialApp(
    title: 'Meet N Match',
    home: FirstRoute(),
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
  ));
}

class FirstRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meet N Match'),
      ),
      body: Center(
        child: Column(
          children:[
            Expanded(
              child: Image(
                image: AssetImage('assets/icono.png'),
              ),
            ),

          ElevatedButton(
          child: Text('Alquilar'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ]
      ),
      ),
    );
  }
}
class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {


  String texto= 'futbol';
  String local='Polideportivo Maracena';
  String valor_actual= 'futbol';
  String valor_pago= 'paypal';
  final fecha = new TextEditingController();
  final localizacion = new TextEditingController();
  final jugadores = new TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alquileres"),
      ),

      body:

      Center(

        child:
        Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
        Align(
        alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child:
          DropdownButton<String>(
                value: local,

                items: [
                  DropdownMenuItem(
                      child: Text('Polideportivo de Maracena'),
                      value: 'Polideportivo Maracena'),

                  DropdownMenuItem(
                      child: Text('Campo de Fútbol de Granada'),
                      value: 'Campo de Futbol Granada'),

                  DropdownMenuItem(
                      child: Text('Pista de Tenis de Atarfe'),
                      value: 'Pista Tenis Atarfe'),

                  DropdownMenuItem(
                      child: Text('Pista de Tenis de Albolote'),
                      value: 'Pista de Tenis Albolote'),

                  DropdownMenuItem(
                      child: Text('Pista de Fútbol de Illora'),
                      value: 'Pista de Futbol Illora'),

                  DropdownMenuItem(
                      child: Text('Pista de Tenis de Cogollos'),
                      value: 'Pista de Tenis de Cogollos'),
                ],

                onChanged: (valor) {
                  setState((){
                    local= valor;
                  });
                }
            ))),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child:
            Text("Selecciona la localización")
            )),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: fecha,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Introduzca Fecha con formato: DD/MM HH:mm ',

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: jugadores,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Introduzca el numero de jugadores. ',
                ),
              ),
            ),

        DropdownButton<String>(
          value: valor_actual,

            items: [
              DropdownMenuItem(
                  child: Text('Fútbol'),
              value: 'futbol'),

              DropdownMenuItem(
                  child: Text('Tenis'),
                  value: 'tenis'),
            ],

            onChanged: (valor) {
              setState((){
                texto= valor;
                valor_actual= valor;
              });
            }
            ),
            Text('Deporte'),

            DropdownButton<String>(
                value: valor_pago,

                items: [
                  DropdownMenuItem(
                      child: Text('Paypal'),
                      value: 'paypal'),

                  DropdownMenuItem(
                      child: Text('Tarjeta'),
                      value: 'tarjeta'),
                  DropdownMenuItem(
                      child: Text('Transferencia'),
                      value: 'transferencia'),
                ],

                onChanged: (val) {
                  setState((){
                    valor_pago= val;
                  });
                }
            ),
            Text("Método de pago"),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ElevatedButton(
              child: Text('Comprobar disponibilidad y pagar'),
              onPressed:
                  () {
                GestorAlquileres gestorAlq= new GestorAlquileres();
                AlquilerActual.precioAlquiler= gestorAlq.alquilarUbicacion(int.parse(jugadores.text), local, fecha.text, valor_actual);
                if(AlquilerActual.precioAlquiler == -1){
                  showAlertDialog(context);
                }else if(AlquilerActual.precioAlquiler == 0){
                  showAlertDialogOcupada(context);
                }else{

                  if( valor_pago == 'paypal' ){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaypalRoute()),
                    );
                  }else if( valor_pago == 'tarjeta' ){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TarjetaRoute()),
                    );
                  }else if( valor_pago == 'transferencia' ){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransferenciaRoute()),
                    );
                  }

                }
                print(AlquilerActual.precioAlquiler);
              },
            ),
          ),

          ],

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () { Navigator.pop(context); },
        tooltip: 'Atrás',
        child: Icon(Icons.arrow_back_ios),

      ),
    );
  }
}

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { Navigator.pop(context); },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Error"),
    content: Text("Esta localización no existe o no se practica en ella el deporte seleccionado."),
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

showAlertDialogOcupada(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { Navigator.pop(context); },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Error"),
    content: Text("La localización ya está ocupada en la fecha seleccionada."),
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

class PaypalRoute extends StatefulWidget {
  @override
  _PaypalRouteState createState() => _PaypalRouteState();
}

class _PaypalRouteState extends State<PaypalRoute> {
  final email = new TextEditingController();
  final nombre = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Realizar pago Paypal"),
          automaticallyImplyLeading: false,
    ),


    body:

    Center(

      child:

        Column(
        mainAxisAlignment : MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child:
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Dirección email de Paypal',
              ),

            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child:
            TextFormField(
              controller: nombre,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre y apellidos',
              ),

            ),
          ),
          Text('Total a pagar: ' + AlquilerActual.precioAlquiler.toString() + "€"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ElevatedButton(
              child: Text('Realizar pago'),
              onPressed:
                  () {
                PagoPaypal paypal= new PagoPaypal(email.text, nombre.text);
                paypal.realizarPago(GestorAlquileres.alquileres.last, context);
              },
            ),
          ),
          
        ],

        ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GestorAlquileres gestorAlq= new GestorAlquileres();
          gestorAlq.noRealizarOperacion();
        Navigator.pop(
          context, );
        },
        tooltip: 'Atrás',
        child: Icon(Icons.arrow_back_ios),

      ),
    );
  }
}


class TarjetaRoute extends StatefulWidget {
  @override
  _TarjetaRouteState createState() => _TarjetaRouteState();


}

class _TarjetaRouteState extends State<TarjetaRoute> {


  final numeroTarjeta=new TextEditingController();
  final nombreTitular=new TextEditingController();
  final codVerificacion=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Realizar pago con Tarjeta"),
        automaticallyImplyLeading: false,
      ),

      body:

      Center(

        child:

        Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child:
              TextFormField(
                controller: numeroTarjeta,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Número de tarjeta',
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child:
              TextFormField(
                controller: nombreTitular,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre y apellidos',
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child:
              TextFormField(
                controller: codVerificacion,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Código de verificación',
                ),

              ),
            ),
            Text('Total a pagar: ' + AlquilerActual.precioAlquiler.toString() + "€"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: ElevatedButton(
                child: Text('Realizar pago'),
                onPressed:
                    () {
                  PagoTarjeta pagoTar= new PagoTarjeta(int.parse(numeroTarjeta.text), nombreTitular.text,int.parse(codVerificacion.text));
                  pagoTar.realizarPago(GestorAlquileres.alquileres.last, context);
                },
              ),
            ),

          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GestorAlquileres gestorAlq= new GestorAlquileres();
          gestorAlq.noRealizarOperacion();
          Navigator.pop(
            context, );
        },
        tooltip: 'Atrás',
        child: Icon(Icons.arrow_back_ios),

      ),
    );
  }
}


class TransferenciaRoute extends StatefulWidget {
  @override
  _TransferenciaRouteState createState() => _TransferenciaRouteState();
}

class _TransferenciaRouteState extends State<TransferenciaRoute> {


  final numeroCuenta=new TextEditingController();
  final nombreTitular=new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Realizar pago mediante Transferencia"),
        automaticallyImplyLeading: false,
      ),

      body:

      Center(

        child:

        Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child:
              TextFormField(
                controller: numeroCuenta,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Número de cuenta',
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child:
              TextFormField(
                controller: nombreTitular,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre y apellidos',
                ),

              ),
            ),

            Text('Total a pagar: ' + AlquilerActual.precioAlquiler.toString() + "€"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: ElevatedButton(
                child: Text('Realizar pago'),
                onPressed:
                    () {
                  PagoTransferencia pagoTrans= new PagoTransferencia(int.parse(numeroCuenta.text), nombreTitular.text);
                  pagoTrans.realizarPago(GestorAlquileres.alquileres.last, context);
                },
              ),
            ),

          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GestorAlquileres gestorAlq= new GestorAlquileres();
          gestorAlq.noRealizarOperacion();
          Navigator.pop(
            context, );
        },
        tooltip: 'Atrás',
        child: Icon(Icons.arrow_back_ios),

      ),
    );
  }
}







