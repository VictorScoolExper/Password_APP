import 'package:flutter/material.dart';

class AccountUserInfo extends StatelessWidget {
  const AccountUserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Info'),
      ),
      body: Column(
        children: <Widget>[
          Text('this is where the user can modify his account', style: TextStyle(fontSize: 30),)
        ],
      )
    );
  }
}
