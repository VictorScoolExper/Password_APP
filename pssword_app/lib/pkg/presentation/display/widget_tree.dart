import 'package:flutter/material.dart';
import 'package:pssword_app/pkg/presentation/pages/login/loginPhone.dart';
import 'package:pssword_app/pkg/presentation/pages/login/loginTablet.dart';
import 'package:pssword_app/pkg/presentation/display/responsive_layout.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ResponsiveLayout(
        tiny: Container(),
        phone: LoginPhone(width: width, height: height, ),
        tablet: LoginTablet(width: width/2, height: height/2,),
        largeTablet: LoginTablet(width: width/2, height: height/2,),
        computer: LoginTablet(width: width/2, height: height/2,),
      ),
    );
  }
}

