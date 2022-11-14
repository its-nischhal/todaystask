import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/drive_in/livraison_confirm.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/data/cart_data.dart';

class CartTile extends StatelessWidget {
  CartTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueColor,
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Nbre. Positions:'),
                            Text('Total HTVA:'),
                            Text('TVA:'),
                            Text('Vidange:'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(CartData.cartData.length.toString()),
                            Text(CartData.totalPrice()),
                            Text(CartData.totalTaxPrice()),
                            Text('0,00'),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Total TVAC:',
                        style: TextStyle(fontSize: 15),
                      ),
                      Expanded(
                        child: Text(
                          CartData.totalPriceAfterTax(),
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xFFF26B6B),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ConfirmPage();
                        }));
                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFF26B6B)),
                          fixedSize: MaterialStateProperty.all(Size(180, 42))),
                      child: const Text('Confirmer'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
