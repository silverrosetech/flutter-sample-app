import 'package:flutter/material.dart';
import 'package:flutter_app/screens/cart_products.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {

          },
        ),
        title: Text("Cart"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text("Total amount"),
              subtitle: Text("450"),
            ),
            ),
            Expanded(child: MaterialButton(onPressed: (){},
            child: Text("Checkout",style: TextStyle(color: Colors.white,fontSize: 16),),
              color: Colors.amber,
            ))
          ],
        ),
      ),
    );
  }
}
