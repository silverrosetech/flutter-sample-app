import 'package:flutter/material.dart';
import 'package:flutter_app/Authentication/register.dart';
import 'package:flutter_app/screens/homepage.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/malecheflogo.png"),
                    fit: BoxFit.cover
                  ),
                ),
              ),

             Container(
               height: 60,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("E-commerce"),
                   Text("Online sharp sales"),
                   Text("To Dashboard"),
                 ],
               ),
             ),
              Container(
                height: 100,
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>RegisterScreen()));
                  },
                  color: Colors.blueGrey,
                  child: Text("Enter",style: TextStyle(color: Colors.white,fontSize: 20),
                  ),

                ),
              )


            ],
          ),

        ),
      ),
    );
  }
}
