// import 'package:admin_olx/Login/login.dart';
// import 'package:admin_olx/MainScreens/home.dart';
import 'package:admin_olx/Login/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

late QuerySnapshot ads;

Future <void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin OLX Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginScreen(), //FirebaseAuth.instance.currentUser != null ? HomeScreen() : LoginScreen(),
    );
  }
}


