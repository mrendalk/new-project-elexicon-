import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:resta/cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx((() => Container(
          padding: const EdgeInsets.symmetric(horizontal: 75),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "total",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              '${controller.total}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        )));
  }
}
