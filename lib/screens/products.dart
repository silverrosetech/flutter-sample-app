import 'package:flutter/material.dart';
import 'package:flutter_app/screens/product_details.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Pasta",
      "picture": "images/pastanew.png",
      "oldprice": "N300",
      "price": "N250",
    },
    {
      "name": "swallow",
      "picture": "images/swallow2.jpeg",
      "oldprice": "N300",
      "price": "N250",
    },
    {
      "name": "Goodybag",
      "picture": "images/foodbaskbg.jpg",
      "oldprice": "N300",
      "price": "N250",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
              prod_name: product_list[index]["name"],
              prod_picture: product_list[index]["picture"],
              prod_old_price: product_list[index]["oldprice"],
              prod_price: product_list[index]["price"]);
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const Single_prod(
      {super.key,
      required this.prod_name,
      required this.prod_picture,
      required this.prod_old_price,
      required this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => new ProductDetails(product_details_name: prod_name,
                  product_details_old_price: prod_old_price,product_details_new_price: prod_price,
                    product_details_picture: prod_picture,
                  ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                    ),
                    title: Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$$prod_old_price",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
