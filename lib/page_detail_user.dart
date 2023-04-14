import 'package:flutter/material.dart';
import 'users_model.dart';

class PageDetailUser extends StatelessWidget {
  final Data userData;

  const PageDetailUser({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail User ${userData.id}"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                width: 100,
                child: Image.network(userData.avatar!),
            ),
            Text("${userData.firstName} ${userData.lastName}",
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              "${userData.email}",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
      ),
    ),
    );
  }
}
