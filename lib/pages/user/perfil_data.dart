import 'package:flutter/material.dart';

class BodyDatosPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Datos del perfíl',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            width: 70,
            child: Image.asset("assets/LOGO_BRADISE.png"),
          )
        ],
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Nombre:"),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: _cajaTextoNombre('Gary Isaac')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Apellidos:"),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: _cajaTextoNombre('Velarde Rios')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Dirección:"),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: _cajaTextoNombre('Jr. Bella Unión 631')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Correo:"),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: _cajaTextoNombre('garyvelarderips@gmail.com')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Teléfono:"),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: _cajaTextoNombre('957289546')),
            Container(
                child: new ElevatedButton(
              onPressed: () => {},
              child: new Text('Actualizar'),
            ))
          ],
        ),
      ),
    );
  }
}

Widget _cajaTextoNombre(String prueba) => TextField(
      //autofocus: true,
      readOnly: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
          hintText: prueba),
    );
