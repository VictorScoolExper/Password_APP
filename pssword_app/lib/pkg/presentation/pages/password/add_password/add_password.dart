import 'package:flutter/material.dart';


class AddPassword extends StatefulWidget {
  const AddPassword({Key? key}) : super(key: key);

  @override
  _AddPasswordState createState() => _AddPasswordState();
}

class _AddPasswordState extends State<AddPassword> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color(0xffb252525),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 25),
              child: Text(
                'Add Password',
                style: TextStyle(fontSize: 25, color: Colors.white),
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
                labelText: 'Webiste name or Comapany',
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
                labelText: 'User Email',
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
            box20(),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuPhone()));
                },
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xffb7af683))),
                child: const Text('Add Password'),
              ),
            ),
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
    return SizedBox(
      height: 20,
    );
  }
}
