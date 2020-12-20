import 'package:firebase_auth/firebase_auth.dart';

class Users {
  String id;

  Users.fromFirebase(User _user) {
    id = _user.uid;
  }
}
