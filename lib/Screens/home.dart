import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:untitled1/Screens/user_settings_page.dart';
import 'package:untitled1/widgets/appbar.dart';
import 'home_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
         const Icon(
        Icons.person,
        size: 35,
      ),
            () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return UserSettings();
          }));
        },
      ),
      body: HomePage(),
    );
  }
}


