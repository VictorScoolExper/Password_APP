import 'package:flutter/material.dart';

import '../add_edit_note.dart';

class NoteCard extends StatelessWidget {
  NoteCard({required this.scrnSizeLrg});

  late bool scrnSizeLrg;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.folder),
            title: Text('Note Name'),
            subtitle: Text('size note for what it can contain'),
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
                    child: Row(children: <Widget>[
                      Icon(Icons.looks_rounded),
                      Text('View Note')
                    ]),
                    onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AddEditNote()))
                        }),
                const SizedBox(width: 8),
                TextButton(
                    child: Row(children: <Widget>[
                      Icon(Icons.edit),
                      Text('View Note')
                    ]),
                    onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AddEditNote()))
                        }),
                const SizedBox(width: 8),
              ],
            ),
          )
        : Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('View Note'),
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
                  child: const Text('Edit Note'),
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
