import 'dart:async';
import 'package:firebase/Ui/Firestore/firestore_list_screen.dart';
import 'package:firebase/Ui/auth/login_screen.dart';
import 'package:firebase/Ui/posts/post_screen.dart';
import 'package:firebase/Ui/upload_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class SplashServices{

   void isLogin(BuildContext context){

     final auth = FirebaseAuth.instance;
     final user = auth.currentUser;
     if(user != null){
       Timer(const Duration(seconds: 3),
               ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> UploadImageScreen()))
       );
     }else{
       Timer(const Duration(seconds: 3),
               ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()))
       );
     }


  }
}