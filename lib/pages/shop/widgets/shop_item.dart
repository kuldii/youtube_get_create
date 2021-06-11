import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/shopC.dart';

class ShopItem extends StatelessWidget {
  final shopC = Get.find<ShopC>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            shopC.quantity.value--;
            Get.find<ShopC>(tag: 'total').total.value--;
          },
          icon: Icon(Icons.remove),
        ),
        Obx(
          () => Text(
            "${shopC.quantity}",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            shopC.quantity.value++;
            Get.find<ShopC>(tag: 'total').total.value++;
          },
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
