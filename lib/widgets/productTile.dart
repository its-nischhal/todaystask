import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/data/cart_data.dart';
import 'package:untitled1/widgets/add_cart.dart';

import '../constants.dart';

class ProductTile extends StatefulWidget {
  const ProductTile(
      {required this.productImage,
      required this.productId,
      required this.productName,
      required this.productName2,
      required this.index,
      Key? key,
      required this.callback})
      : super(key: key);
  final String productImage;
  final String productId;
  final String productName;
  final String productName2;
  final Function() callback;
  final int index;

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  String prix = '12,50';
  Widget getIcon() {
    if (CartData.cartData.containsKey(widget.productId)) {
      return Text(
        '${CartData.cartData[widget.productId].toString()}x',
        style: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
      );
    } else {
      return const Icon(
        CupertinoIcons.plus,
        color: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
          leading: Container(
            height: 100,
            width: 100,
            child: Center(child: Image.asset(widget.productImage)),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                widget.productId,
                style: productTileTextStyle,
              ),
              Text(widget.productName,
                  style: productTileTextStyle.copyWith(
                      fontWeight: FontWeight.bold)),
              Text(widget.productName2, style: productTileTextStyle),
              Row(
                children: [
                  const Text('prix:', style: productTileTextStyle),
                  Text(
                    prix,
                    style: productTileTextStyle.copyWith(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          trailing: ElevatedButton(
            onPressed: () async {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AddToCartWidget(
                      productId: widget.productId,
                      callback: widget.callback,
                    );
                  });
              // setState(() {});
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                backgroundColor: MaterialStateProperty.all(blueColor),
                fixedSize: MaterialStateProperty.all(Size.square(60))),
            child: getIcon(),
          )),
    );
  }
}
