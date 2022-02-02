import 'package:flutter/material.dart';

import 'package:pssword_app/pkg/presentation/pages/home/menu-tablet.dart';
import 'package:pssword_app/pkg/presentation/pages/register/register.dart';

class LoginTablet extends StatefulWidget {
  LoginTablet({required this.width, required this.height});

  double width;
  double height;

  @override
  _LoginTabletState createState() => _LoginTabletState();
}

class _LoginTabletState extends State<LoginTablet> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width/2;
    double height = MediaQuery.of(context).size.height/2;
    return Row(
      children: <Widget>[
        Container(
          color: Color(0xffb383838),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.access_alarm,
                color: Colors.white,
                size: height/10,
              ),
              const Text(
                'Welcome to the safest password App',
                style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffb7fffcd)),
              ),
              const Text(
                'We are dedicated to your safety',
                style: TextStyle(fontStyle: FontStyle.italic, color: Color(0xffb9afffa)),
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Color(0xffb252525),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: height / 25,
                  ),
                  Container(
                    width: width / 2,
                    child: const TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: 'Enter Email',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 35,
                  ),
                  Container(
                    width: width / 2,
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2.0),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: width / 50, right: width / 50
                    ),
                    width: width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MenuTablet()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffb7af683))),
                      child: const Text('Login'),
                    ),
                  ),
                  SizedBox(
                    height: height / 25,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                        primary: Color(0xffb7fffcd)),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => RegisterPage()));
                    },
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

