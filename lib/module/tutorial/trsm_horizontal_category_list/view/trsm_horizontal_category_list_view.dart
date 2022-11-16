import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_horizontal_category_list_controller.dart';

class TrsmHorizontalCategoryListView extends StatefulWidget {
  const TrsmHorizontalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, TrsmHorizontalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmHorizontalCategoryList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
                child: ListView.builder(
                  itemCount: controller.categoryList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = controller.categoryList[index];
                    bool isSelected = item == controller.selectedCategory;

                    return Container(
                      margin: const EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(64.0),
                          ),
                          backgroundColor:
                              isSelected ? Colors.orange : Colors.grey,
                        ),
                        onPressed: () {
                          controller.selectedCategory = item;
                          controller.setState(() {});
                        },
                        child: Text("$item"),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrsmHorizontalCategoryListView> createState() =>
      TrsmHorizontalCategoryListController();
}
