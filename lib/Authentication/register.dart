import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Authentication/login_screen.dart';
import 'package:flutter_app/Authentication/new_login.dart';
import 'package:flutter_app/screens/homepage.dart';
import 'package:flutter_app/models/helper.dart';
class RegisterScreen extends StatelessWidget {

final GlobalKey <FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Register".toUpperCase(),style: TextStyle(
                        color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,

                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 400,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10,),
                      TextFormField(
                        validator: (value){
                          if(value =="")
                            {
                              return "Please enter name";
                            }
                        },
                        decoration: InputDecoration(
                          hintText: "User name",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(

                          )
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: authService.email,
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
                        controller: authService.password,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "pass word",
                            hintStyle: TextStyle(
                              color: Colors.blueGrey,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                FocusScope.of(context).unfocus();
                              },
                              child: Icon(Icons.visibility,color: Colors.black,),
                            ),
                            border: OutlineInputBorder(

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.app_registration,color: Colors.white,
                          ),
                          label: Text("Register".toUpperCase(),

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20),
                            primary: Colors.amber,
                          ),
                          onPressed: (){
                            if(authService.email!=null&& authService.password!= null){
                              authService.loginUser(context);
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Homepage(),));
                            }

                          },
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children:<Widget> [
                          Text("Already have account?"),
                          GestureDetector(
                              onTap: (){

                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=> NewLogin(),));
                              },
                              child: Text("Login",style: TextStyle(
                            color: Colors.amber,fontSize: 20,fontWeight: FontWeight.bold,

                          ),)
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
      ),
    );
  }
}
