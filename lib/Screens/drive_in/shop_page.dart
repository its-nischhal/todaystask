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
  String filter = '';

  Widget getProductTile(int index) {
    if (productData[index]['productName'].toString().contains(filter)) {
      return Column(
        children: [
          ProductTile(
            productImage: productData[index]['productImage'].toString(),
            productId: productData[index]['productId'].toString(),
            productName: productData[index]['productName'].toString(),
            productName2: productData[index]['productName2'].toString(),
            index: index,
            callback: () => setState(() {}),
          ),
          const Divider(
            color: Colors.black54,
            thickness: 2,
            indent: 15,
            endIndent: 15,
          )
        ],
      );
    } else {
      return Container();
    }
  }

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
                onChanged: (value) {
                  filter = value;
                  setState(() {});
                },
                padding: const EdgeInsets.all(5),
                prefix: Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    CupertinoIcons.search,
                    color: textFieldIconColor,
                  ),
                ),
                suffix: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      CupertinoIcons.mic_fill,
                      color: textFieldIconColor,
                    )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: textFieldColor,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productData.length,
              itemBuilder: (BuildContext context, int index) {
                final item = productData[index];
                return Dismissible(
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  key: ValueKey(item),
                  onDismissed: (direction) {
                    CartData.updateCartData(
                        productData[index]['productId'].toString(), 0);
                    var temp = productData[index];
                    productData.removeAt(index);
                    productData.add(temp);
                    setState(() {});
                  },
                  child: Column(children: [
                    getProductTile(index),
                  ]),
                );
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
