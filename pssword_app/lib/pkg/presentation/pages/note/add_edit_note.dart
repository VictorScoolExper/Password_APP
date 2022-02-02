import 'package:flutter/material.dart';
import 'package:pssword_app/config/layout.dart';
import 'package:pssword_app/config/theme/dark.dart';

class AddEditNote extends StatelessWidget {
  static const valueKey = ValueKey('AddEditNote');

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add or Edit Note'),
        backgroundColor: barColor,
      ),
      body: Container(
        width: width,
        height: height,
        color: backgroundColor,
        child: Column(
          children: <Widget>[
            sizeBox_h20,
            TextField(
              style: const TextStyle(color: white),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title Note',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            sizeBox_h35,
            Container(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your note goes below',
                    style: TextStyle(fontSize: 20, color: white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              height: height / 3,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                minLines: 20,
                maxLines: 20, // allow user to enter 5 line in textfield
                keyboardType: TextInputType
                    .multiline, // user keyboard will have a button to move cursor to next line
              ),
            ),
          ],
        ),
      ),
    );
  }
}
