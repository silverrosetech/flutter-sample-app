import 'package:flutter/material.dart';
import 'package:flutter_app/screens/homepage.dart';
import 'package:flutter_app/Authentication/register.dart';
import 'package:flutter_app/models/helper.dart';
class NewLogin extends StatefulWidget {


  @override
  State<NewLogin> createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login into your account",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: authService.email,
              decoration: InputDecoration(
                label: Text("E-mail"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: authService.email,
              decoration: InputDecoration(
                label: Text("Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.app_registration,color: Colors.white,
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
                  if(authService.email!=null&& authService.password!= null){
                    authService.loginUser(context);
                    //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Homepage(),));
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Homepage(),));
                  }

                },
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children:<Widget> [
                Text("New user?"),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>RegisterScreen(),));
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
    );
  }
}
