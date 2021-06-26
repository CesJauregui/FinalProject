import 'package:flutter/material.dart';
import 'package:pagina_principal/pages/user/password.dart';
import 'package:pagina_principal/pages/user/perfil_data.dart';
import 'package:pagina_principal/pages/templates.dart';

class BodyMiCuenta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mi cuenta',
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
              height: 30,
            ),
            Container(
              child: Image.asset(
                "assets/userLogin.png",
                scale: 2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "Gary Velarde Rios",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: CajaTexto(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Contrasenia(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: _historial(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

class CajaTexto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      //autofocus: true,
      readOnly: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        hintText: 'Nombre, Correo, Dirección, Teléfono ...',
        //labelText: 'Nombre, Correo, Dirección, Teléfono ...',
        suffixIcon: IconButton(
            icon: Icon(Icons.arrow_right_outlined),
            onPressed: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BodyDatosPerfil();
                })),
            color: Colors.black),
      ),
    );
  }
}

class Contrasenia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        hintText: 'Contraseña',
        //labelText: 'Contraseña',
        suffixIcon: IconButton(
            icon: Icon(Icons.arrow_right_outlined),
            onPressed: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BodyContrasenia();
                })),
            color: Colors.black),
      ),
    );
  }
}

Widget _historial() => TextField(
      readOnly: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        hintText: 'Historial de Compras',
        //labelText: 'Historial de Compras',
        suffixIcon: Icon(Icons.arrow_right_outlined, color: Colors.black),
      ),
    );
