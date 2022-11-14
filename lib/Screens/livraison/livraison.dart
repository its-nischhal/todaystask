import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/livraison/livraison_login.dart';
import 'package:untitled1/Screens/livraison/livraison_signup.dart';
import 'package:untitled1/widgets/appbar.dart';
import 'package:untitled1/widgets/options.dart';

import '../../constants.dart';

class Livraison extends StatelessWidget {
  const Livraison({Key? key}) : super(key: key);

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
          Options('Client existant', blueColor, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LivraisonLogin();
            }));
          }),
          Options('Nouveau client', blueColor, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LivraisonSignUp();
            }));
          })
        ],
      ),
    );
  }
}
