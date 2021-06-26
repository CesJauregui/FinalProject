import 'package:flutter/material.dart';

class BodyContrasenia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contraseña',
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
                    Text("Contraseña actual:"),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: _cajaTextoPassword()),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Contraseña nueva:"),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: _cajaTextoPassword()),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Confirmar contraseña:"),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: _cajaTextoPassword()),
            SizedBox(
              height: 10,
            ),
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

Widget _cajaTextoPassword() => TextField(
      readOnly: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        hintText: '******',
        //labelText: 'Contraseña',
        suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black),
      ),
    );
