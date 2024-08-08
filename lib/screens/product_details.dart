import 'package:flutter/material.dart';
import 'package:flutter_app/screens/cart.dart';
import 'package:flutter_app/screens/products.dart';
class ProductDetails extends StatefulWidget {

final product_details_name;
final product_details_new_price;
final product_details_old_price;
final product_details_picture;

  const ProductDetails({super.key, required this.product_details_name, required this.product_details_new_price, required this.product_details_old_price, required this.product_details_picture});
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
        title: Text("${widget.product_details_name}"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
          }, icon: Icon(Icons.shopping_cart)),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(15,2.0,15,10),
        child: ListView(
          children: [
            Container(
              height: 300,
             child: GridTile(

               child: Container(
                 color: Colors.white,
                 child: Image.asset(widget.product_details_picture),
               ),
               footer: new Container(
                 color: Colors.white70,
                 child: ListTile(
                   leading: Text(widget.product_details_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                   title: Row(
                     children: [
                       Expanded(child: Text("${widget.product_details_old_price}",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)),
                       Expanded(child: Text("${widget.product_details_new_price}",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),)),
                     ],
                   ),
                 ),
               ),
             ),
            ),

            //first button
            Row(
             children: [
               //the size button
               Expanded(
                 child: MaterialButton(onPressed: (){
                   showDialog(context: context, builder: (context){
                     return AlertDialog(
                       title: Text("Size"),
                       content:Text("Pick Size") ,
                       actions: [
                         MaterialButton(onPressed: (){
                           Navigator.of(context).pop(context);
                         },
                         child: Text("close"),
                         )
                       ],
                     );

                   });
                 },
                   color: Colors.white,
                   textColor: Colors.grey,
                   elevation: 0.2,
                   child: Row(
                     children: [
                       Expanded(child: Text("Size"),),
                       Expanded(child: Icon(Icons.arrow_drop_down),),
                     ],
                   ),

               ),

               ),
               //the size button
               Expanded(
                 child: MaterialButton(onPressed: (){},
                   color: Colors.white,
                   textColor: Colors.grey,
                   elevation: 0.2,
                   child: Row(
                     children: [
                       Expanded(child: Text("Color"),),
                       Expanded(child: Icon(Icons.arrow_drop_down),),
                     ],
                   ),

                 ),

               ),
               //the size button
               Expanded(
                 child: MaterialButton(onPressed: (){},
                   color: Colors.white,
                   textColor: Colors.grey,
                   elevation: 0.2,
                   child: Row(
                     children: [
                       Expanded(child: Text("Qty"),),
                       Expanded(child: Icon(Icons.arrow_drop_down),),
                     ],
                   ),

                 ),

               ),

             ],
            ),

            Row(
              children: [
                Expanded(child: MaterialButton(
                  onPressed: (){},
                  color: Colors.amber,
                  textColor: Colors.white,
                  child: Text("Add to cart"),
                )),
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.amber,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,)),
              ],
            ),
            Divider(),
            ListTile(
              title: Text("Product Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              subtitle: Text("This is a nice product freshly made by your company name, to serve all kinds of custumers"),
            ),
            Divider(),
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Product name",style: TextStyle(fontWeight: FontWeight.w700)),
                ),
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("${widget.product_details_name}"),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Product brand",style: TextStyle(fontWeight: FontWeight.w700),),
                ),
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Kitchen Glory"),
                ),


              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Product condition",style: TextStyle(fontWeight: FontWeight.w700)),
                ),
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Great"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
