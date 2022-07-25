import 'package:get/get.dart';
import 'package:resta/product.dart';

class CartController extends GetxController {
  // ignore: prefer_final_fields
  var _products = {}.obs;
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
      "product added",
      "you are added the ${product.name} to cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((Product) => Product.key.price * Product.value)
      .toList();

  get total => _products.entries
      .map((Product) => Product.key.price * Product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(5);
}
