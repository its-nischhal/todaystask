import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:untitled1/constants.dart';

import '../widgets/multiple_options.dart';
import '../widgets/options.dart';
import '../widgets/small_options.dart';

class UserSettings extends StatelessWidget {
  UserSettings({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Image(
            height: 40,
            width: 52,
            image: Svg('images/Group 31.svg'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text('Configuration utilisateur',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Notifications Push',style: TextStyle(fontSize: 16,color: Color(0xFF706F6F)),),
            ),
            const Divider(
              thickness: 5,
              indent: 15,
              endIndent: 15,

            ),

            Options('Sauvegarder mes préférences',blueColor),
            MultipleOptions(),
            SmallOptions('Mentions légales'),
            SmallOptions('Vie privée'),
            SmallOptions('Conditions générales'),
            Options('Logout', redColor)
          ],
        ),
      ),
    );
  }
}