import 'dart:math';

import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_add_and_delete_from_list_controller.dart';

class TrsmAddAndDeleteFromListView extends StatefulWidget {
  const TrsmAddAndDeleteFromListView({Key? key}) : super(key: key);

  Widget build(context, TrsmAddAndDeleteFromListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmAddAndDeleteFromList"),
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          var randomId = Random().nextInt(1000);
          controller.products.add({
            "product_name": "OD Ciptadent $randomId",
            "price": Random().nextInt(300),
          });
          controller.setState(() {});
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  return InkWell(
                    onTap: () {
                      // controller.products.remove(item);
                      controller.products.removeAt(index);
                      controller.setState(() {});
                    },
                    child: Card(
                      child: ListTile(
                        title: Text("${item["product_name"]}"),
                        subtitle: Text("${item["price"]}"),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TrsmAddAndDeleteFromListView> createState() =>
      TrsmAddAndDeleteFromListController();
}
