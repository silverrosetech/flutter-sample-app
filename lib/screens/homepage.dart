import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/horizontallistview.dart';
import 'package:flutter_app/screens/products.dart';

class Homepage extends StatelessWidget {
  Widget _buildCategoryProducts(String image) {
    return CircleAvatar(
      maxRadius: 45,
      backgroundImage: AssetImage("images/$image"),
      backgroundColor: Colors.lime,
      child: Container(
        height: 40,
        child: Image(
          image: AssetImage("images/$image"),
          color: Colors.white,
        ),
      ),
    );
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Abel"),
              accountEmail: Text("goal@yahoo.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("images/newheader.png"),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              enabled: true,
              onTap: () {},
              leading: Icon(Icons.shop_2_outlined),
              title: Text("Orders"),
            ),
            ListTile(
              enabled: true,
              onTap: () {},
              leading: Icon(Icons.favorite_border),
              title: Text("Favorites"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.support_agent_outlined),
              title: Text("Support"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.info_outline,
                color: Colors.grey,
              ),
              title: Text("About"),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text("Company name"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            _key.currentState?.openDrawer();
          },
        ),
        title: Text("Home Page"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15,2.0,2.0,10),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 200,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  dotColor: Colors.white,
                  autoplay: false,
                  dotIncreasedColor: Colors.white,
                  dotIncreaseSize: 4,
                  dotSize:2,
                  dotBgColor: Colors.transparent,
                  indicatorBgPadding: 0.2,
                  images: [
                    AssetImage("images/foodbaskbg.jpg"),
                    AssetImage("images/malecheflogo.png"),
                    AssetImage("images/pastanew.png")
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_sharp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Search from Names",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    /*Container(
                        height: 50,

                      ),*/
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Featured",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "See more",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Card(
                                    child: Container(
                                      height: 180,
                                      width: 150,
                                      color: Colors.white,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            height: 130,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/pastanew.png"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "\$ 30.0",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Product",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    child: Container(
                                      height: 180,
                                      width: 150,
                                      color: Colors.white,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            height: 130,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "images/swallow2.jpeg"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "\$ 30.0",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Product",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            HorizontalListview(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Recent products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            ),
            //grid
            Flexible(
              child: Products(),
            ),
            //stop

            Container(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Featured",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "See more",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Card(
                                  child: Container(
                                    height: 180,
                                    width: 150,
                                    color: Colors.white,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 130,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "images/pastanew.png"),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "\$ 30.0",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Product",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    height: 180,
                                    width: 150,
                                    color: Colors.white,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 130,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "images/swallow2.jpeg"),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "\$ 30.0",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Product",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
