import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_danu/screens/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uas_danu/screens/navbar_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login',
      theme: ThemeData.dark(),
      home: LoginScreen(),
    );
  }
}
