import 'package:flutter/material.dart';

import 'package:pssword_app/pkg/presentation/pages/home/menu-phone.dart';
import 'package:pssword_app/pkg/presentation/pages/register/register.dart';

class LoginPhone extends StatelessWidget {
  const LoginPhone({
    required this.width,
    required this.height,
  });

  final double width;
  final double height;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xffb383838),
          width: width,
          height: height,
        ),
        //Instead of having repeated text fields a custom
        //widget can be made
        Column(
          children: <Widget>[
            Container(
              height: height / 2,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: height / 6,
                  ),
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: width / 2,
                  ),
                  SizedBox(
                    height: height / 10,
                  ),
                ],
              ),
            ),
            Container(
              height: height / 2,
              decoration: const BoxDecoration(
                color: Color(0xffb252525),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: <Widget>[
                  sizeBox_height_divive_by_25(height: height),
                  inputEmailLogin(
                      width: width,
                  ),
                  sizeBox_height_divide_35(height: height),
                  inputPassLogin(
                    width: width,
                  ),
                  sizeBox_height_divive_by_25(height: height),
                  btnLogin(width: width),
                  sizeBox_height_divive_by_25(height: height),
                  const Text(
                    "Haven't Registered yet, Create a free account with us",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => RegInfo()));
                    },
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                        color: Color(0xffb7af683),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class inputEmailLogin extends StatelessWidget {
  inputEmailLogin({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width - 10,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          labelText: 'Enter Email',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class inputPassLogin extends StatelessWidget {
  inputPassLogin({
    Key? key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width - 10,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        obscureText: true,
        decoration: const InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class sizeBox_height_divide_35 extends StatelessWidget {
  const sizeBox_height_divide_35({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 35,
    );
  }
}

class sizeBox_height_divive_by_25 extends StatelessWidget {
  const sizeBox_height_divive_by_25({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 20,
    );
  }
}

class btnLogin extends StatelessWidget {
  const btnLogin({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: width / 50, right: width / 50),
      width: width,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MenuPhoneScrn()));
        },
        style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all<Color>(Color(0xffb7af683))),
        child: const Text('Login'),
      ),
    );
  }
}
