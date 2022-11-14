import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/widgets/appbar.dart';

import '../../widgets/multiple_options.dart';
import '../../widgets/options.dart';
import '../../widgets/small_options.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(null, null),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Configuration utilisateur',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Notifications Push',
                style: TextStyle(fontSize: 16, color: Color(0xFF706F6F)),
              ),
            ),
            const Divider(
              thickness: 5,
              indent: 15,
              endIndent: 15,
            ),
            const MultipleOptions(),
            Options('Sauvegarder mes préférences', blueColor, () {}),
            const SizedBox(
              height: 100,
            ),
            SmallOptions('Mentions légales'),
            SmallOptions('Vie privée'),
            SmallOptions('Conditions générales'),
            Options('Logout', redColor, () {})
          ],
        ),
      ),
    );
  }
}
