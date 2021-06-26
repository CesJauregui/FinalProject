import 'package:flutter/material.dart';
import 'package:pagina_principal/pages/menu_lateral.dart';
import 'package:pagina_principal/pages/templates.dart';

class ProdructPage extends StatelessWidget {
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
        backgroundColor: Colors.lightBlue[800],
      ),
      drawer: MenuLateral(),
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Text(
                      "Bebidas",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          decoration: TextDecoration.underline),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        "assets/bebidas.png",
                        scale: 5,
                      ),
                    ),
                  ],
                ),
              ),
              ProductSelect()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

class ProductSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      height: screen.width * 1.18,
      child: ListView(
        children: [
          Item(
              "Gaseosa INKA COLA\n botella 500ml",
              Image.asset(
                "assets/inca_cola.png",
                scale: 10,
              ),
              "Online\t\tS/. 2.60"),
          Item(
              "Gaseosa COCA COLA\n botella 1L",
              Image.asset(
                "assets/coca-cola-1-litro.png",
                scale: 10,
              ),
              "Online\t\tS/. 4.30"),
          Item(
              "Gaseosa PEPSI Black\n botella 3L",
              Image.asset(
                "assets/pepsi_3L.jpg",
                scale: 10,
              ),
              "Online\t\tS/. 5.50"),
          Item(
              "Vodka Mark Absolute\n botella 1L",
              Image.asset(
                "assets/vodka-absolut.png",
                scale: 10,
              ),
              "Online\t\tS/. 49.90"),
          Item(
              "Agua mineral S Mateo\nbotella 1L",
              Image.asset(
                "assets/agua.png",
                scale: 10,
              ),
              "Online\t\tS/. 2.60"),
          Item(
              "Cifrut Punch Mediano\nbotella 1L",
              Image.asset(
                "assets/cifrut.jpg",
                scale: 10,
              ),
              "Online\t\tS/. 2.60"),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final texto;
  final img;
  final descp;
  Item(this.texto, this.img, this.descp);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [this.img],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.texto,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(this.descp,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.red[600],
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green[400]),
                child: IconButton(
                  icon: Icon(Icons.add_shopping_cart_sharp),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) {
                      Future.delayed(Duration(seconds: 3), () {
                        Navigator.of(context).pop(true);
                      });
                      return AlertDialog(
                        title: Center(
                            child: Text(
                          "Gracias por tu compra",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        content: Image.asset(
                          "assets/mobile_payment.gif",
                          scale: 1.5,
                        ),
                        elevation: 24.0,
                        backgroundColor: Colors.lightBlue[250],
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Messagge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Accept?"),
      content: Text("Do you accept?"),
      actions: [
        TextButton(onPressed: () {}, child: Text("Gracias por la compra")),
      ],
      elevation: 24.0,
      backgroundColor: Colors.blue,
    );
  }
}
