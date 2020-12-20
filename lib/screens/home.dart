import 'package:flutter/material.dart';

import 'package:flutter_app/domain/photo.dart';
import 'package:flutter_app/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text('Photos'),
          leading: Icon(Icons.photo_album),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  AuthService().logOut();
                },
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                ),
                label: SizedBox.shrink())
          ],
        ),
        body: PhotosList(),
      ),
    );
  }
}

class PhotosList extends StatelessWidget {
  final photos = <Photo>[
    Photo(title: 'Photo192', author: 'Igor', description: 'Test Photo'),
    Photo(title: 'Photo193', author: 'Igor', description: 'Test Photo'),
    Photo(title: 'Photo194', author: 'Igor', description: 'Test Photo'),
    Photo(title: 'Photo195', author: 'Igor', description: 'Test Photo'),
    Photo(title: 'Photo196', author: 'Igor', description: 'Test Photo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListView.builder(
          itemCount: photos.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).textTheme.title.color),
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12),
                      child: Icon(
                        Icons.photo_camera,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      photos[i].title,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
