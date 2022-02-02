import 'package:flutter/material.dart';
import 'package:pssword_app/pkg/presentation/pages/password/view_password/widgets/passwordCard.dart';


class passwordList extends StatelessWidget {
  passwordList({required this.scrnSizeLeg});
  bool scrnSizeLeg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PasswordCard(scrnSizeLrg: scrnSizeLeg,),
        const Divider(
          height: 20,
          thickness: 5,
          indent: 20,
          endIndent: 0,
        ),
        PasswordCard(scrnSizeLrg: scrnSizeLeg,)
      ],
    );
  }
}