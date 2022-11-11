import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/data/cart_data.dart';
import 'package:untitled1/data/productData.dart';
import 'package:untitled1/widgets/CartTile.dart';
import 'package:untitled1/widgets/appbar.dart';
import 'package:untitled1/widgets/productTile.dart';

class ShopHome extends StatefulWidget {
  const ShopHome({Key? key}) : super(key: key);

  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  Widget cart() {
    if (CartData.cartData.isNotEmpty) {
      return CartTile();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          const Icon(
            CupertinoIcons.heart_fill,
            size: 30,
          ),
          () {}),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              height: 36,
              child: CupertinoTextField(
                padding: EdgeInsets.all(5),
                prefix: Padding(
                  child: Icon(
                    CupertinoIcons.search,
                    color: textFieldIconColor,
                  ),
                  padding: EdgeInsets.all(8),
                ),
                suffix: Padding(
                    child: Icon(
                      CupertinoIcons.mic_fill,
                      color: textFieldIconColor,
                    ),
                    padding: EdgeInsets.all(5)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: textFieldColor,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Column(children: [
                  ProductTile(
                    productImage: productData[index]['productImage'].toString(),
                    productId: productData[index]['productId'].toString(),
                    productName: productData[index]['productName'].toString(),
                    productName2: productData[index]['productName2'].toString(),
                    callback: () => setState(() {}),
                  ),
                  const Divider(
                    color: Colors.black54,
                    thickness: 2,
                    indent: 15,
                    endIndent: 15,
                  )
                ]);
              },
            ),
          ),
          Stack(
            children: [cart()],
          )
        ],
      ),
    );
  }
}
