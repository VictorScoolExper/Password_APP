import 'package:flutter/material.dart';
import 'package:pssword_app/config/layout.dart';
import 'package:pssword_app/config/theme/dark.dart';
import 'package:pssword_app/pkg/presentation/pages/note/widgets/noteCard.dart';

class NotesMain extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sizeBox_h20,
          Center(
            child: Text(
              'Notes',
              style: TextStyle(fontSize: 30, color: white),
            ),
          ),
          sizeBox_h35,
          NoteCard(
            scrnSizeLrg: false,
          ),
        ],
      ),
    );
  }
}
