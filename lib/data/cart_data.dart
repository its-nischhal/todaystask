import 'package:untitled1/data/productData.dart';

class CartData {
  static void updateCartData(String productId, int count) {
    if (count == 0) {
      if (cartData.containsKey(productId)) {
        cartData.remove(productId);
      }
    } else if (cartData.containsKey(productId)) {
      cartData.update(productId, (value) => count);
    } else {
      cartData.putIfAbsent(productId, () => count);
    }
  }

  static String noOfItems() {
    return cartData.length.toString();
  }

  static String totalPriceAfterTax() {
    int price = getTotalPrice();
    return (price + price * .23).toString();
  }

  static String totalTaxPrice() {
    int price = getTotalPrice();
    return (price * .23).toString();
  }

  static int getTotalPrice() {
    int price = 0;
    for (String pId in cartData.keys) {
      int productPrice;
      for (int index = 0; index < productData.length; index++) {
        if (productData[index]['productId'] == pId) {
          productPrice = int.parse(productData[index]['price'].toString());
          price = price + (productPrice * cartData[pId]!);
        }
      }
    }
    return price;
  }

  static String totalPrice() {
    return getTotalPrice().toString();
  }

  static Map<String, int> cartData = Map();
}
