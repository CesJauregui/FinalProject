import 'package:flutter/material.dart';
import 'package:pagina_principal/pages/login_screen.dart';
import 'package:pagina_principal/pages/user/my_account.dart';
import 'package:pagina_principal/pages/page_index.dart';
import 'package:pagina_principal/pages/settings.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          Image.asset("assets/LOGO_BRADISE.png"),
          Ink(
            color: Colors.grey,
            child: new ListTile(
                title: Text(
                  "Gary Velarde Rios\ngaryvelarderios@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {}),
          ),
          new ListTile(
            title: Text(
              "Inicio",
            ),
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return IndexPage();
            })),
          ),
          new ListTile(
            title: Text("Mi cuenta"),
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BodyMiCuenta();
            })),
          ),
          new ListTile(
            title: Text("Ajustes"),
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BodyAjustes();
            })),
          ),
          new ListTile(
            title: Text("Cerrar sesión"),
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            })),
          ),
        ],
      ),
    );
  }
}
