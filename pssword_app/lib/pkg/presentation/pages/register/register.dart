import 'package:flutter/material.dart';
import 'package:pssword_app/pkg/presentation/pages/home/menu-phone.dart';

class RegInfo extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb383838),
        title: Text('Register'),
      ),
      body: Container(
        color: Color(0xffb252525),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30,),
            const Text('Stop forgeting passwords', style: TextStyle(fontSize: 20, color: Colors.white),),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Name',

                    ),
                  ),
                  box20(),
                  TextField(
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
                      labelText: 'LastName',
                    ),
                  ),
                  box20(),
                  TextField(
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
                      labelText: 'Email',
                    ),
                  ),
                  box20(),
                  TextField(
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
                  box20(),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MenuPhoneScrn()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffb7af683))
                      ),
                      child: const Text('Login'),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class box20 extends StatelessWidget {
  const box20({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 20,);
  }
}
