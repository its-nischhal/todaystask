import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/data/productData.dart';

import '../constants.dart';
import '../data/cart_data.dart';

class AddToCartWidget extends StatefulWidget {
  const AddToCartWidget({
    required this.productId,
    Key? key,
    required this.callback,
  }) : super(key: key);
  final String productId;
  final Function() callback;
  @override
  State<AddToCartWidget> createState() => _AddToCartWidgetState(this.productId);
}

class _AddToCartWidgetState extends State<AddToCartWidget> {
  _AddToCartWidgetState(this.productId) {}
  final String productId;
  int productPrice = 0;
  int productCount = 0;
  void getPrice() {
    for (int i = 0; i < productData.length; i++) {
      if (productData[i]['productId'] == productId) {
        productPrice = int.parse(productData[i]['price'].toString());
      }
    }
  }

  @override
  void initState() {
    getPrice();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('COCA REGULAR PET 6X1,50'),
      content: Column(children: [
        const Text('Unité EMB. PERDU 6x1,50'),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: CupertinoPicker(
                    itemExtent: 30,
                    onSelectedItemChanged: (value) {
                      productCount = value;
                      print(value);
                      setState(() {});
                    },
                    looping: true,
                    useMagnifier: true,
                    magnification: 1.2,
                    children: const [
                      Text(
                        '0',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        '1',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        '2',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        '3',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        '4',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        '5',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: CupertinoPicker(
                    looping: false,
                    useMagnifier: true,
                    itemExtent: 30,
                    magnification: 1.2,
                    onSelectedItemChanged: (value) {},
                    children: [
                      Text(
                        (productPrice * productCount).toString(),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        TextButton(
          onPressed: () async {
            CartData.updateCartData(productId, productCount);
            widget.callback();
            Navigator.pop(context);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(blueColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
              fixedSize: MaterialStateProperty.all(Size.fromWidth(246))),
          child: const Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Ajouter au panier',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 46,
          width: 46,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(blueColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
            ),
            child: const Icon(
              CupertinoIcons.heart_fill,
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
