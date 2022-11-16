import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_horizontal_category_list_controller.dart';

class LtsmHorizontalCategoryListView extends StatefulWidget {
  const LtsmHorizontalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, LtsmHorizontalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmHorizontalCategoryList"),
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
                height: 50.0,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
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
                height: 30.0,
              ),
              SizedBox(
                height: 50.0,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    //TODO: Atur selectedIndex = index did alam event onPressed()
                    //! Panggil controller.setState((){}); setelah-nya
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 6.0,
                      ),
                      //TODO: Atur warna button, jika selectedIndex == index,
                      //! Maka warnanya orange,
                      //! Jika tidak, warnanya grey
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.menu,
                          size: 12.0,
                        ),
                        label: Text(
                          "Category $index",
                          style: const TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () {},
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmHorizontalCategoryListView> createState() =>
      LtsmHorizontalCategoryListController();
}
