
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/shop_page.dart';
import 'package:untitled1/constants.dart';
import '../widgets/options.dart';

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
        Options('Livraison',blueColor,(){}),
        Options('Drive-In',blueColor,(){Navigator.push(context,MaterialPageRoute(builder: (context){return ShopHome();}));}),
        Options('Promotions',blueColor,(){})
      ],
    );
  }
}