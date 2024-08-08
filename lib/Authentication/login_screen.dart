import 'package:flutter/material.dart';
import 'package:flutter_app/Authentication/register.dart';
import 'package:flutter_app/screens/homepage.dart';
import 'package:flutter_app/screens/new_home_screen.dart';

class LoginScreen extends StatefulWidget {

  final GlobalKey <FormState> _formkey = GlobalKey<FormState>();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  bool obserText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/newheader.png"

                  ),
                  TextFormField(

                    decoration: InputDecoration(
                        hintText: "e-mail",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),

                        border: OutlineInputBorder(

                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(


                    obscureText: obserText,
                    decoration: InputDecoration(
                        hintText: "pass word",
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: (){
                            FocusScope.of(context).unfocus();
                            obserText=!obserText;
                          },
                          child: Icon(obserText== true?Icons.visibility:Icons.visibility_off,color: Colors.black,),
                        ),
                        border: OutlineInputBorder(

                        )
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.login,color: Colors.amber,
                      ),
                      label: Text("Login".toUpperCase(),

                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        primary: Colors.amber,
                      ),
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Homepage(),));
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children:<Widget> [
                      Text("New user?"),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Homepage(),));
                        },
                          child: Text("Register",style: TextStyle(
                        color: Colors.amber,fontSize: 20,fontWeight: FontWeight.bold,

                      ),)
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
