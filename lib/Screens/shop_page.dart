import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/widgets/appbar.dart';
import 'package:untitled1/widgets/productTile.dart';
import 'package:untitled1/productData.dart';

class ShopHome extends StatefulWidget {
  const ShopHome({Key? key}) : super(key: key);

  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        const Icon(CupertinoIcons.heart_fill,size: 30,),
          (){}
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              height: 36,
              child: CupertinoTextField(

                padding: EdgeInsets.all(5),
                prefix: Padding(child:Icon(CupertinoIcons.search,color: textFieldIconColor,),padding: EdgeInsets.all(8),),
                suffix: Padding(child:Icon(CupertinoIcons.mic_fill,color: textFieldIconColor,),padding: EdgeInsets.all(5)),
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
                return Column(
                    children:[
                      ProductTile(
                          productImage: productData[index]['productImage']!,
                          productId: productData[index]['productId']!,
                          productName: productData[index]['productName']!,
                          productName2: productData[index]['productName2']!
                      ),
                const Divider(
                  color: Colors.black54,
                  thickness: 2,
                  indent: 15,
                  endIndent: 15,
                )
                    ]
                );
              },

            ),
          )
        ],
      ),
    );
  }
}
