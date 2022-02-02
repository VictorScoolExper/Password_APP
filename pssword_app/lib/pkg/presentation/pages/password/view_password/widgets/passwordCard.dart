import 'package:flutter/material.dart';

class PasswordCard extends StatelessWidget {
  PasswordCard({required this.scrnSizeLrg});

  late bool scrnSizeLrg;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.add_moderator_rounded),
            title: Text('Website Name'),
            subtitle: Text('Email Used'),
          ),
          btnTiles(scrnSizeLrg: scrnSizeLrg),

        ],
      ),
    );
  }
}

class btnTiles extends StatelessWidget {
  btnTiles({required this.scrnSizeLrg});
  late bool scrnSizeLrg;
  @override
  Widget build(BuildContext context) {
    return scrnSizeLrg == false
        ? Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton(
              child: const Text('View Password'), onPressed: () => {}),
          const SizedBox(width: 8),
          TextButton(
              child: const Text('Edit Password'), onPressed: () => {}),
          const SizedBox(width: 8),
        ],
      ),
    )
        : Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton(
            child: const Text('View Password'),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text("Password is shown"),
                content: const Text('Password: ###'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          TextButton(
            child: const Text('Edit Password'),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text("Edit password"),
                content: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
