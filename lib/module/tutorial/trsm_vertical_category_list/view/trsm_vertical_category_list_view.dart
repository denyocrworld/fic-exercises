import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_vertical_category_list_controller.dart';

class TrsmVerticalCategoryListView extends StatefulWidget {
  const TrsmVerticalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, TrsmVerticalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmVerticalCategoryList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.categoryList.length,
                itemBuilder: (context, index) {
                  var item = controller.categoryList[index];
                  bool selected = controller.selectedCategory == item;
                  return Container(
                    height: 60.0,
                    margin: const EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.check,
                        size: selected ? 20 : 0,
                      ),
                      label: Text("$item"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selected ? Colors.green : Colors.grey,
                      ),
                      onPressed: () {
                        controller.selectedCategory = item;
                        controller.setState(() {});
                      },
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
  State<TrsmVerticalCategoryListView> createState() =>
      TrsmVerticalCategoryListController();
}
