import 'package:flutter/material.dart';
import 'package:pagina_principal/pages/menu_lateral.dart';
import 'package:pagina_principal/pages/product/products_category.dart';
import 'package:pagina_principal/pages/templates.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BRADISE',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
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
      drawer: MenuLateral(),
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Categorías de Productos",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                      decoration: TextDecoration.underline),
                ),
              ),
              AllProducts()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
