import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/domain/users.dart';
import 'package:flutter_app/screens/auth.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/landing.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:provider/provider.dart';
//MaterialDesigne
//import 'domain/photo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Photos());
}

class Photos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Users>.value(
      value: AuthService().currentUser,
      child: MaterialApp(
          title: 'Photos',
          theme: ThemeData(
              primaryColor: Color.fromRGBO(20, 20, 20, 1),
              textTheme: TextTheme(
                  title: TextStyle(color: Color.fromRGBO(31, 81, 46, 0.8)))),
          home: LandingPage()),
    );
  }
}
