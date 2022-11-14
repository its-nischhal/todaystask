import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/widgets/appbar.dart';
import 'package:untitled1/widgets/options.dart';

class ClientEmail extends StatelessWidget {
  const ClientEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(null, null),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
              child: Text(
                'Nouveau Client',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Icon(
              CupertinoIcons.mail,
              size: 64,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                'On vient de vous envoyer un email de confirmation.'
                'Veuillez trouver votre numéro de client dans ce mail et appuyez sur le buton ci-dessous pour vous connecter.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Options('Me connecter', blueColor, () {})
          ],
        ),
      ),
    );
  }
}
