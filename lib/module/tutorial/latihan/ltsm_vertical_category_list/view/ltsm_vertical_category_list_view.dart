import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_vertical_category_list_controller.dart';

class LtsmVerticalCategoryListView extends StatefulWidget {
  const LtsmVerticalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, LtsmVerticalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmVerticalCategoryList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //TODO: Buat variabel selectedIndex di dalam State/Controller
              // int selectedIndex = 0;
              SizedBox(
                child: ListView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    //TODO: Atur selectedIndex = index did alam event onTap()
                    //! Panggil controller.setState((){}); setelah-nya
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        //TODO: Atur warna card, jika selectedIndex == index,
                        //! Maka warnanya orange,
                        //! Jika tidak, warnanya grey
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.home),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text("Category $index"),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmVerticalCategoryListView> createState() =>
      LtsmVerticalCategoryListController();
}
