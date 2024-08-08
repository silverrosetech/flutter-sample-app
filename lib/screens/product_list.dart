import 'package:flutter/material.dart';
class ListProducts extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){},),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp))

        ],
      ),
    );
  }
}
