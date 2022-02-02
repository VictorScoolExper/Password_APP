import 'package:flutter/material.dart';
import 'package:pssword_app/pkg/presentation/pages/password/add_password/add_password.dart';
import 'package:pssword_app/pkg/presentation/pages/password/view_password/listPassword.dart';

import 'package:pssword_app/pkg/presentation/pages/setting/settings.dart';

class MenuTablet extends StatefulWidget {
  const MenuTablet({Key? key}) : super(key: key);

  @override
  _MenuTabletState createState() => _MenuTabletState();
}

class _MenuTabletState extends State<MenuTablet> {
  int index = 0;
  int home = 0;
  int addPass = 1;
  int notes = 2;
  int setting = 3;

  Icon homeIcon = Icon(
    Icons.home_sharp,
    size: 25,
  );
  Icon addIcon = Icon(
    Icons.add_circle,
    size: 25,
  );
  Icon notesIcon = Icon(
    Icons.note_rounded,
    size: 25,
  );
  Icon settingIcon = Icon(
    Icons.settings,
    size: 25,
  );

  Text homeText = Text(
    'Home',
    style: TextStyle(
      fontSize: 15,
    ),
  );
  Text passText = Text(
    'Add Password',
    style: TextStyle(
      fontSize: 15,
    ),
  );
  Text notesText = Text(
    'note',
    style: TextStyle(
      fontSize: 15,
    ),
  );
  Text settingText = Text(
    'Setting',
    style: TextStyle(
      fontSize: 15,
    ),
  );

//list of options for bottom buttons
  List<Widget> _widgetOptions = <Widget>[
    Container(
      child: passwordList(scrnSizeLeg: false),
      color: Color(0xffb383838),
    ),
    Container(
      child: AddPassword(),
      color: Color(0xffb383838),
    ),
    Container(
      height: 300,
      child: Text(
        'This is a place for the user to save notes',
        style: TextStyle(color: Colors.white),
      ),
      color: Color(0xffb383838),
    ),
    Container(
      child: SettingsPage(),
      color: Color(0xffb383838),
    ),
  ];


  void onItemTapped(tapped){
    setState(() {
      this.index = tapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xffb252525),
      ),
      body: Container(
        color: Color(0xffb383838),
        child: Row(
          children: <Widget>[
            //this will contain the list of option for users
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color(0xffb252525),
              ),
              width: width / 4,
              height: height,
              child: Column(
                children: <Widget>[
                  Container(height: height/6, width: width/4,  color: Colors.deepOrange,),
                  SizedBox(height: 35,),
                  GestureDetector(
                    child: Container(
                      height: height / 15,
                      color: Colors.amber,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[homeIcon, SizedBox(width: 10),homeText],
                      ),
                    ),
                    onTap: ()=>onItemTapped(home),
                  ),
                  GestureDetector(
                    child: Container(
                      height: height / 15,
                      color: Colors.amber,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[addIcon, SizedBox(width: 10),passText],
                      ),
                    ),
                    onTap: ()=>onItemTapped(addPass),
                  ),
                  GestureDetector(
                    child: Container(
                      height: height / 15,
                      color: Colors.amber,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[notesIcon, SizedBox(width: 10),notesText],
                      ),
                    ),
                    onTap: ()=>onItemTapped(notes),
                  ),
                  GestureDetector(
                    child: Container(
                      height: height / 15,
                      color: Colors.amber,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[settingIcon, SizedBox(width: 10),settingText],
                      ),
                    ),
                    onTap: ()=>onItemTapped(setting),
                  ),
                ],
              ),
            ),
            //This will contain the password list
            Container(
              width: width - (width / 4),
              height: height,
              child: _widgetOptions.elementAt(index),
            ),
          ],
        ),
      ),
    );
  }
}
