import 'package:flutter/material.dart';
import 'package:pagina_principal/pages/product/products.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      height: screen.width * 1.4,
      child: ListView(
        children: [
          Products(
              "Bebidas",
              Image.asset(
                "assets/bebidas.png",
                scale: 10,
              ),
              "Las mejores bebidas\na los mejores precios."),
          Products(
              "Lácteos",
              Image.asset(
                "assets/lacteos.png",
                scale: 11,
              ),
              "Variedad de leche \ny todos sus derivados."),
          Products(
              "Dulcería",
              Image.asset(
                "assets/dulces.png",
                scale: 11,
              ),
              "Gran variedad de \nmarca de golocinas ."),
          Products(
              "Harinas",
              Image.asset(
                "assets/harinas.png",
                scale: 11,
              ),
              "Harinas de trigo,\ncevada, maiz, centeno."),
          Products(
              "Botanas",
              Image.asset(
                "assets/botanas.png",
                scale: 11,
              ),
              "Los mejores snack\ny botanas de todo tipo."),
          Products(
              "Produc. de limpieza",
              Image.asset(
                "assets/Productos_Limpieza.png",
                scale: 11,
              ),
              "Productos limpieza\npersonal y para hogar."),
          Products(
              "Product. enlatados",
              Image.asset(
                "assets/productos_enlatados.png",
                scale: 11,
              ),
              "Las mejores conservas\ntradicionales aquí."),
        ],
      ),
    );
  }
}

class Products extends StatelessWidget {
  final texto;
  final img;
  final descp;
  Products(this.texto, this.img, this.descp);
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
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(this.descp, style: TextStyle(fontSize: 13)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.send_rounded),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return ProdructPage();
                })),
              ),
            ],
          )
        ],
      ),
    );
  }
}
