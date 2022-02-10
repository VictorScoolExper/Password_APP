import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pssword_app/config/theme/dark.dart';
import 'package:pssword_app/pkg/presentation/pages/account/account_user_info.dart';
import 'package:pssword_app/pkg/presentation/pages/home/providers/floatingBtn_Provider.dart';
import 'package:pssword_app/pkg/presentation/pages/home/providers/indexProvider.dart';
import 'package:pssword_app/pkg/presentation/pages/info/info.dart';
import 'package:pssword_app/pkg/presentation/pages/note/add_edit_note.dart';
import 'package:pssword_app/pkg/presentation/pages/note/notes.dart';
import 'package:pssword_app/pkg/presentation/pages/password/add_password/add_password.dart';

import 'package:pssword_app/pkg/presentation/pages/password/view_password/listPassword.dart';
import 'package:pssword_app/pkg/presentation/pages/setting/settings.dart';

class MenuPhoneScrn extends ConsumerWidget {
  static const valueKey = ValueKey('MenuPhoneScrn');

//list of options for bottom buttons
  List<Widget> _widgetOptions = <Widget>[
    InfoHome(),
    Container(
      child: passwordList(scrnSizeLeg: false),
      color: Color(0xffb383838),
    ),
    Container(
      child: passwordList(scrnSizeLeg: false),
      color: Color(0xffb383838),
    ),
    NotesMain(),
    SettingsPage()
  ];

  //list widget for the add button
  List<Widget> _addList = <Widget>[
    Container(),
    AddPassword(),
    AddPassword(),
    AddEditNote(),
  ];

  final items = <Widget>[
    Icon(Icons.home_sharp, size: 30),
    Icon(Icons.phone_android, size: 30),
    Icon(Icons.cloud, size: 30),
    Icon(Icons.note_rounded, size: 30),
    Icon(Icons.settings, size: 30)
  ];



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Logo'),
        backgroundColor: barColor,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AccountUserInfo()));
              },
              icon: Icon(Icons.account_circle))
        ],
      ),
      body: _widgetOptions.elementAt(ref.watch(indexProvider.state).state),
      //
      floatingActionButton: ref.watch(showFloatingBtn)
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => _addList
                        .elementAt(ref.watch(indexProvider.state).state)));
              },
              backgroundColor: greenColor,
              child: const Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: ref.read(indexProvider.state).state,
        backgroundColor: greenColor,
        onTap: (index) => {
          ref.read(indexProvider.state).state = index,
          if (index < 1 || index > 3)
            {
              if (index == 0)
                {
                  ref.read(showFloatingBtn.state).state = false,
                },
              if (index == 4)
                {
                  ref.read(showFloatingBtn.state).state = false,
                  ref.read(indexProvider.state).state = 0,
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SettingsPage())),
                },
            }
          else
            {
              ref.read(showFloatingBtn.state).state = true,
            },
          //print(ref.read(indexProvider.state).state)
        },
        //color: Color(0xffb252525),
      ),
    );
  }
}
