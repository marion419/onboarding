import 'package:get/get.dart';

class ProductController extends GetxController {
  Set<String> products = {};
  Set<String> leftProducts = {};
  Set<String> rightProducts = {};

  void addProduct(String product) {
    products.add(product);
    update();
  }
}