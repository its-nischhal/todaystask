import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/data/cart_data.dart';
import 'package:untitled1/widgets/appbar.dart';
import 'package:untitled1/widgets/options.dart';

class ConfirmPage extends StatelessWidget {
  ConfirmPage({Key? key}) : super(key: key);
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(null, null),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                  child: Text(
                    'Commande d’articles',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 0),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Votre panier d’articles',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Nbre. Positions:',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        CartData.noOfItems(),
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            'Total HTVA:',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text('TVA:'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text('Vidange:'),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              '${CartData.totalPrice()}€',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text('${CartData.totalTaxPrice()}€',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            '0€',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Nbre. Positions:',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: redColor),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '${CartData.totalPriceAfterTax()}€',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: redColor),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Votre mode de livraison:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: CupertinoSlidingSegmentedControl(
                      backgroundColor: Colors.grey.shade200,
                      onValueChanged: (value) {},
                      thumbColor: Colors.white,
                      children: const {
                        'Livraison': Text('Livraison'),
                        'Drive-In': Text('Drive-In')
                      }),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Date de livraison:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Commentaire:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CupertinoTextField(
                    placeholder: 'Commentaire:',
                    style: const TextStyle(fontSize: 17),
                    suffix: InkWell(
                      onTap: () {
                        controller.clear();
                      },
                      child: const Icon(
                        Icons.cancel,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Options('Commander', blueColor, () {})
              ],
            ),
          ),
        ));
  }
}
