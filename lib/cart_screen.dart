import 'package:flutter/material.dart';
import 'package:resta/cart_product.dart';
import 'package:resta/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("your cart")),
        body:  Column(children: [
        CartProducts(),
        CartTotal(),
      ]),
        );
  }
}

