
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:carousel_images/carousel_images.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
            // color: Color(0xFF003980),
            backgroundColor: Color(0xFF003980),
            foregroundColor: Color(0xFFFFFFFF))),
    home: Home()
  ));
}
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            Image.asset(
              'images/Promo Slider.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Image.asset('images/Promo Slider1.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
          ),
        ),
        Options('Livraison'),
        Options('Drive-In'),
        Options('Promotions')
      ],
    );
  }
}

class Options extends StatelessWidget {
  final String text;

  Options(this.text) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextButton(
        onPressed: (){},
        child: Container(
          height: 71,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF003980),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
class SmallOptions extends StatelessWidget {
  final String text;

  SmallOptions(this.text) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextButton(
        onPressed: (){},
        child: Container(
          height: 37 ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF003980),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
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
            Center(
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
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Notifications Push',style: TextStyle(fontSize: 16,color: Color(0xFF706F6F)),),
            ),
            Divider(
              thickness: 5,
              indent: 15,
              endIndent: 15,

            ),

            Options('Sauvegarder mes préférences'),
            MultipleOptions(),
            SmallOptions('Mentions légales'),
            SmallOptions('Vie privée'),
            SmallOptions('Conditions générales'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 71,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFE22D2A),
                ),
                child: Center(
                  child: Text(
                    'Logout',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class MultipleOptions extends StatefulWidget {
  const MultipleOptions({Key? key}) : super(key: key);

  @override
  State<MultipleOptions> createState() => _MultipleOptionsState();
}

class _MultipleOptionsState extends State<MultipleOptions> {
  bool gen = false;
  bool pro = false;
  bool per = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20,10,20,10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Push génériques',style: TextStyle(fontSize: 16,color: Color(0xFF706F6F)),),
              CupertinoSwitch(value: gen, onChanged: (v){gen=v;setState(() {});})
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20,10,20,10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Push promotionnels',style: TextStyle(fontSize: 16,color: Color(0xFF706F6F)),),
              CupertinoSwitch(value: pro, onChanged: (v){pro=v;setState(() {});})
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20,10,20,10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Push personnalisés',style: TextStyle(fontSize: 16,color: Color(0xFF706F6F)),),
              CupertinoSwitch(value: per, onChanged: (v){per=v;setState(() {});})
            ],
          ),
        ),
      ],
    );
  }
}
