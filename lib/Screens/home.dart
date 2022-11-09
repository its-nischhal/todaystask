import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:untitled1/Screens/user_settings_page.dart';
import 'home_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UserSettings();
                }));
              },
            ),
          )
        ],
      ),
      body: HomePage(),
    );
  }
}
