import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NewHomeScreen extends StatefulWidget {
  const NewHomeScreen({Key? key}) : super(key: key);

  @override
  _NewHomeScreenState createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<NewHomeScreen> {
 /* String timeFormat(DateTime time){
    return DateFormat("hh:mm:ss a").format(time);
  }*/

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getting date and time
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.amber,
                Colors.cyan
              ],
              begin: FractionalOffset(0,0),
              end: FractionalOffset(1,0),
              stops: [0,1],
              tileMode: TileMode.clamp,

            ),
          ),
        ),
        title: Padding(

          padding: const EdgeInsets.all(12.0),
          child: const Text(

            "Welcome to silver rose food app"
          ),
        ),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Time:09:16",style: TextStyle(
              fontSize: 20,
              color: Colors.amber,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.add_shopping_cart,color: Colors.amber,
                  ),
                  label: Text("Upload Products".toUpperCase(),

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Colors.amber
                  ),
                  onPressed: (){},
                ),
                SizedBox(width: 20,),
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.description,color: Colors.amber,
                  ),
                  label: Text("VIEW RECENT".toUpperCase()+"\n"+ "orders".toUpperCase(),

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      primary: Colors.cyan,
                  ),
                  onPressed: (){},
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.add_shopping_cart,color: Colors.amber,
                  ),
                  label: Text("Manage Plans".toUpperCase(),

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      primary: Colors.amber
                  ),
                  onPressed: (){},
                ),
                SizedBox(width: 20,),
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.person_add,color: Colors.amber,
                  ),
                  label: Text("Manage".toUpperCase()+"\n"+ "Adverts".toUpperCase(),

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Colors.cyan,
                  ),
                  onPressed: (){},
                )
              ],
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.logout,color: Colors.amber,
              ),
              label: Text("Logout".toUpperCase(),

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                primary: Colors.cyan,
              ),
              onPressed: (){},
            )


          ],
        ),
      ),
    );
  }
}
