import 'package:get/get.dart';
import 'package:resta/firestore.dart';
import 'package:resta/product.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;

  @override
  void onInit() {
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}
