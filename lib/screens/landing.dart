import 'package:flutter/cupertino.dart';
import 'package:flutter_app/domain/users.dart';
import 'package:flutter_app/screens/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users user = Provider.of<Users>(context);
    final bool isLoggedIn = user != null;
    return isLoggedIn ? HomePage() : AuthorizationPage();
  }
}
