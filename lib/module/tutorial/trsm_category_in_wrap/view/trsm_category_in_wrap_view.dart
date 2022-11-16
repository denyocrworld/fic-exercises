import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_category_in_wrap_controller.dart';

class TrsmCategoryInWrapView extends StatefulWidget {
  const TrsmCategoryInWrapView({Key? key}) : super(key: key);

  Widget build(context, TrsmCategoryInWrapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmCategoryInWrap"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: List.generate(
              controller.categoryList.length,
              (index) {
                var item = controller.categoryList[index];
                double size = (MediaQuery.of(context).size.width - 40) / 2;
                bool selected = item == controller.selectedCategory;
                return SizedBox(
                  width: size,
                  height: size,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selected ? Colors.purple : Colors.grey,
                    ),
                    onPressed: () {
                      controller.selectedCategory = item;
                      controller.setState(() {});
                    },
                    child: Text("$item"),
                  ),
                );
              },
            )),
      ),
    );
  }

  @override
  State<TrsmCategoryInWrapView> createState() => TrsmCategoryInWrapController();
}
