import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pssword_app/config/theme/dark.dart';
import '../../../../config/layout.dart';

class InfoHome extends StatefulWidget {
  const InfoHome({Key? key}) : super(key: key);

  @override
  _InfoHomeState createState() => _InfoHomeState();
}

class _InfoHomeState extends State<InfoHome> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sizeBox_h35,
          Center(
            child: Text(
              'Welcome User',
              style: TextStyle(fontSize: 20, color: white),
            ),
          ),
          sizeBox_h35,
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: barColor, spreadRadius: 3),
                ],
              ),
              height: height/4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Genral Info', style: TextStyle(color: Colors.white, fontSize: 16),),
                  SizedBox(height:10),
                  Text('ajsdl;al;skdlkasl;kd;lkasl;kd;laksl;dk', style: TextStyle(color: Colors.white, fontSize: 10),)
                ],
              )
          ),
          sizeBox_h35,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: barColor, spreadRadius: 3),
                  ],
                ),
                width: width/2 - 20,
                height: height/6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Some data about password', style: TextStyle(color: Colors.white, fontSize: 16),),
                      SizedBox(height:10),
                      Text('ajsdl;al;skdlkasl;kd;lkasl;kd;laksl;dk', style: TextStyle(color: Colors.white, fontSize: 10),)
                    ],
                  )
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: barColor, spreadRadius: 3),
                  ],
                ),
                width: width/2 - 20,
                height: height/6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Some data about password', style: TextStyle(color: Colors.white, fontSize: 16),),
                    SizedBox(height:10),
                    Text('ajsdl;al;skdlkasl;kd;lkasl;kd;laksl;dk', style: TextStyle(color: Colors.white, fontSize: 10),)
                  ],
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}
