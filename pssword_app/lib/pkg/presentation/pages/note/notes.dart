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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 110,
            child: Column(
              children: <Widget>[
                sizeBox_h20,
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                  child: Text(
                    'Notes',
                    style: TextStyle(fontSize: 30, color: white),
                  ),
                ),
                sizeBox_h35,
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            height: height - 300,
            child: ListView(
                children: <Widget>[
                  NoteCard(
                    scrnSizeLrg: false,
                  ),
                  NoteCard(
                    scrnSizeLrg: false,
                  ),
                  NoteCard(
                    scrnSizeLrg: false,
                  ),
                  
                ],
            ),

          ),

        ],
      ),
    );
  }
}
