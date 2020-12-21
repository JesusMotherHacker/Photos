import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth.dart';

class ReusableWidgets {
  BuildContext context;
  ReusableWidgets(this.context);
  getAppBar(String title) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Photos',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            AuthService().logOut();
          },
          icon: Icon(
            Icons.logout,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  getBottomNav() {
    return BottomNavigationBar(backgroundColor: Colors.white, items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
    ]);
  }
}
