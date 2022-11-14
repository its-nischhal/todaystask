import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/promotion/promotion_pdf.dart';
import 'package:untitled1/widgets/appbar.dart';

import '../../constants.dart';
import '../../widgets/options.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({Key? key}) : super(key: key);

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
              'Nos folders promotionnels',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Options('Promos Drive-In', blueColor, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PromotionPdf();
            }));
          }),
          Options('Promos Horeca', blueColor, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PromotionPdf();
            }));
          }),
          Options('Promos Food', blueColor, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PromotionPdf();
            }));
          }),
          Options('Nos Vins', blueColor, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PromotionPdf();
            }));
          }),
        ],
      ),
    );
  }
}
