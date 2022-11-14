import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/widgets/appbar.dart';

class PromotionPdf extends StatelessWidget {
  PromotionPdf({Key? key}) : super(key: key);

  // final file = File('images/promotion.pdf');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          Icon(
            Icons.ios_share_outlined,
            color: Colors.white,
            size: 30,
          ),
          null),
      body: SingleChildScrollView(),
    );
  }
}
