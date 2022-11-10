import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ProductTile extends StatelessWidget {
   ProductTile({required this.productImage, required this.productId, required this.productName, required this.productName2,Key? key}) : super(key: key);
  final String productImage;
  final String productId;
  final String productName;
  final String productName2;
  final String prix = '12,50';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: Container(
          height: 100,
          width: 100,
          child: Center(child: Image.asset(productImage)),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(productId,style: productTileTextStyle,),
            Text(productName,style: productTileTextStyle.copyWith(fontWeight: FontWeight.bold)),
            Text(productName2,style: productTileTextStyle),
            Row(
              children: [
                const Text('prix:',style: productTileTextStyle),
                Text(prix,style: productTileTextStyle.copyWith(color: Colors.red,fontWeight: FontWeight.bold),)
              ],
            ),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: (){
            showDialog(context: context, builder: (context){return CupertinoAlertDialog(
              title: const Text('COCA REGULAR PET 6X1,50'),
              content: Column(
                children: [
                  const Text('Unité EMB. PERDU 6x1,50'),
              //   Row(
              //   children: [
              //     CupertinoPicker(itemExtent: 10, onSelectedItemChanged: (value){}, children: []),
              //
              //   ],
              // ),
                  TextButton(
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(blueColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                      fixedSize: MaterialStateProperty.all(Size.fromWidth(246))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Ajouter au panier',style: TextStyle(color: Colors.white),),
                    ),

                  ),
                  SizedBox(
                    height: 46,
                    width: 46,
                    child: TextButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(blueColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                      ),
                      child: const Icon(
                          CupertinoIcons.heart_fill,
                        color: Colors.white,
                      ),
                    ),
                          ),
                ]
              ),

            );
            }
            );
          },

          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            backgroundColor: MaterialStateProperty.all(blueColor),
            fixedSize: MaterialStateProperty.all(Size.square(60))
          ),
          child: Icon(CupertinoIcons.plus,color: Colors.white,),
        )
      ),
    );
  }
}
