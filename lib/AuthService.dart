/*


import 'package:agora_city_center/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthService{

  handleAuth(){
    return StreamBuilder(
        stream : FirebaseAuth.instance.onAuthStateChanged,
        builder: (BuildContext context,snapshot){
          if(snapshot.hasData){
            return HomeScreen();
          }
          else
            {
              return LoginScreen();
            }
    },
  };
}*/
