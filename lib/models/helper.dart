import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/Authentication/new_login.dart';



class AuthService{
final auth = FirebaseAuth.instance;
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
  void loginUser(context)async{
    try{
     showDialog(context: context, builder: (context){
       return AlertDialog(
         title: Center(
           child: CircularProgressIndicator(

           ),

         ),
         content:Text("Loging in ...") ,
         actions: [
           MaterialButton(onPressed: (){
             Navigator.of(context).pop(context);
           },
             child: Text("close",style: TextStyle(color: Colors.red),),
           )
         ],
       );

     });
      await auth.signInWithEmailAndPassword(email: email.text, password: password.text)
          .then((value){
        print("User Logged in Successfully");
      });

    }catch(e){showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(
          "Error Message"

        ),
        content:Text(e.toString()) ,
        actions: [
          MaterialButton(onPressed: (){
            Navigator.of(context).pop(context);
          },
            child: Text("close",style: TextStyle(color: Colors.red),),
          )
        ],
      );

    });}
  }
  void registerUser()async{
    try{
      await auth.createUserWithEmailAndPassword(email: email.text, password: password.text)
          .then((value){
            print("Registration complete");
      });
    }catch(e){print(e);}
  }
  void logOutUser()async{
    auth.signOut();
   // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> NewLogin()), (route) => false));
  }
}