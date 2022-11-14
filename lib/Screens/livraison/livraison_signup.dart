import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/livraison/client_email.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/widgets/MyTextField.dart';
import 'package:untitled1/widgets/appbar.dart';
import 'package:untitled1/widgets/options.dart';

class LivraisonSignUp extends StatefulWidget {
  LivraisonSignUp({Key? key}) : super(key: key);

  @override
  State<LivraisonSignUp> createState() => _LivraisonSignUpState();
}

class _LivraisonSignUpState extends State<LivraisonSignUp> {
  bool cuptertinoIconValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(null, null),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 30),
              child: Text(
                'Livraison',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            CupertinoSlidingSegmentedControl(
                onValueChanged: (value) {},
                backgroundColor: Colors.white,
                children: const {
                  'Client privé': Text('Client privé'),
                  'Client professionel': Text('Client professionel')
                }),
            MyTextField('Nom'),
            MyTextField('Prénom'),
            MyTextField('Mot de passe souhaité'),
            MyTextField('Répéter mot de passe'),
            MyTextField('Téléphone'),
            MyTextField('E-mail'),
            MyTextField('Code TVA'),
            MyTextField('Adresse'),
            MyTextField('Code postal'),
            MyTextField('Ville'),
            MyTextField('Commune'),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CupertinoSwitch(
                        value: cuptertinoIconValue,
                        onChanged: (value) {
                          setState(() {
                            cuptertinoIconValue = value;
                          });
                        })),
                const Expanded(
                  flex: 9,
                  child: Text(
                    'J’ai pris connaissance des conditions générales de vente et marque mon accord pour celles-ci',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
            Options('Envoyer', blueColor, () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ClientEmail();
              }));
            })
          ],
        ),
      ),
    );
  }
}
