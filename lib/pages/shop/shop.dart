import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myget/controllers/shopC.dart';

import './widgets/shop_item.dart';

class ShopPage extends StatelessWidget {
  final shopC = Get.put(ShopC(), tag: 'total');
  final quatityC = Get.create(() => ShopC());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOP PAGE"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ShopItem(),
      ),
      floatingActionButton: CircleAvatar(
        child: Obx(
          () => Text("${shopC.total}"),
        ),
      ),
    );
  }
}
