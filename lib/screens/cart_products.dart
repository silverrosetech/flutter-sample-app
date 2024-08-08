import 'package:flutter/material.dart';
class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_the_cart = [
    {
      "name": "Rice",
      "picture": "images/newheader.png",
      "price": "N250",
      "qty":"2",
    },
    {
      "name": "Rice",
      "picture": "images/newheader.png",
      "price": "N250",
      "qty":"2",
    },
    {
      "name": "Rice",
      "picture": "images/newheader.png",
      "price": "N250",
      "qty":"2",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context,index){
          return single_cart_product(cart_prod_name: products_on_the_cart[index]["name"], cart_prod_picture: products_on_the_cart[index]["picture"], cart_prod_qty: products_on_the_cart[index]["qty"], cart_prod_price: products_on_the_cart[index]["price"]);
        });
  }
}

class single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_qty;
  final cart_prod_price;

  const single_cart_product({super.key, required this.cart_prod_name, required this.cart_prod_picture, required this.cart_prod_qty, required this.cart_prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture,width: 40,height: 80,),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                //this is for qty
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Qty:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_qty),
                ),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 8.0, 2.0, 8.0),
                  child: Text("price:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_price),
                ),
              ],
            ),
            //real price area
            Container(
              alignment: Alignment.topLeft,
              child: Text("\$${cart_prod_price}",style:TextStyle(fontSize: 17,color:Colors.red,fontWeight: FontWeight.bold ) ,),
            ),
          ],
        ),
        trailing: Column(
          children: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up)),
            Text("$cart_prod_qty"),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up)),

          ],
        ),
      ),
    );
  }
  /*void addQuantity(){
    cart_prod_qty = cart_prod_qty+1;
  }*/
}
