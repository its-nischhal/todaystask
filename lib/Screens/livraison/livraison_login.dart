import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/widgets/MyTextField.dart';
import 'package:untitled1/widgets/appbar.dart';
import 'package:untitled1/widgets/options.dart';

class LivraisonLogin extends StatelessWidget {
  const LivraisonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(null, null),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 30),
            child: Text(
              'Livraison',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          MyTextField('N° client'),
          MyTextField('Mot de passe'),
          Options('Se connecter', blueColor, () {})
        ],
      ),
    );
  }
}
