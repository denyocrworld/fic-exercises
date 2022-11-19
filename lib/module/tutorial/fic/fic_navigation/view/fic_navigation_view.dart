import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fic_navigation_controller.dart';

class FicNavigationView extends StatefulWidget {
  const FicNavigationView({Key? key}) : super(key: key);

  Widget build(context, FicNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FicNavigation"),
        actions: const [],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 80,
            right: 10,
            height: 400.0,
            child: IndexedStack(
              index: controller.selectedIndex,
              children: [
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.purple,
                ),
              ],
            ),
          ),
          Positioned(
            top: 12,
            left: 12,
            child: Container(
              height: 280.0,
              width: 60.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        controller.selectedIndex = 0;
                        controller.setState(() {});
                      },
                      icon: Icon(
                        Icons.home,
                        color: controller.selectedIndex == 0
                            ? Colors.orange
                            : Colors.grey,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        controller.selectedIndex = 1;
                        controller.setState(() {});
                      },
                      icon: Icon(
                        Icons.list,
                        color: controller.selectedIndex == 1
                            ? Colors.orange
                            : Colors.grey,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        controller.selectedIndex = 2;
                        controller.setState(() {});
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: controller.selectedIndex == 2
                            ? Colors.orange
                            : Colors.grey,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        controller.selectedIndex = 3;
                        controller.setState(() {});
                      },
                      icon: Icon(
                        Icons.person,
                        color: controller.selectedIndex == 3
                            ? Colors.orange
                            : Colors.grey,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 12,
            right: 12,
            bottom: 12,
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        controller.selectedIndex = 0;
                        controller.setState(() {});
                      },
                      icon: Icon(
                        Icons.home,
                        color: controller.selectedIndex == 0
                            ? Colors.orange
                            : Colors.grey,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        controller.selectedIndex = 1;
                        controller.setState(() {});
                      },
                      icon: Icon(
                        Icons.list,
                        color: controller.selectedIndex == 1
                            ? Colors.orange
                            : Colors.grey,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        controller.selectedIndex = 2;
                        controller.setState(() {});
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: controller.selectedIndex == 2
                            ? Colors.orange
                            : Colors.grey,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        controller.selectedIndex = 3;
                        controller.setState(() {});
                      },
                      icon: Icon(
                        Icons.person,
                        color: controller.selectedIndex == 3
                            ? Colors.orange
                            : Colors.grey,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<FicNavigationView> createState() => FicNavigationController();
}
