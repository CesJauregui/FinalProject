import 'package:flutter/material.dart';

class BodyAjustes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Ajustes',
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
                  child: _ajustes("Notificaciones")),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: _ajustes("Notificaciones de Cuenta")),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: _ajustes("Administrar Direcciones")),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: _ajustes("Administrar Pagos")),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: _ajustes("Configuración de Moneda")),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: _ajustes("Términos y Condiciones")),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}

Widget _ajustes(String texto) => TextField(
      readOnly: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        hintText: texto,
        //labelText: 'Contraseña',
        suffixIcon: Icon(Icons.arrow_right_outlined, color: Colors.black),
      ),
    );
