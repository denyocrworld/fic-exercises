import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_navigation_with_slide_animation_controller.dart';

class LtsmNavigationWithSlideAnimationView extends StatefulWidget {
  const LtsmNavigationWithSlideAnimationView({Key? key}) : super(key: key);

  Widget build(context, LtsmNavigationWithSlideAnimationController controller) {
    controller.view = this;
    /*
    FUGI - FLUTTER
    https://tinyurl.com/fugi-community
    selasa, rabu, kamis
    sharing session (FREE)
    Jam 19:00 - 20:00
    kita ada Live EVENT di GMEET


    BERANDAL - UMUM
    https://tinyurl.com/whatsapp-berandal
    */

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmNavigationWithSlideAnimation"),
        actions: const [],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Text(
              "SelectedIndex: ${controller.selectedIndex}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Positioned(
              top: 50.0,
              left: 10.0,
              right: 200,
              height: 200,
              child: IndexedStack(
                index: controller.selectedIndex,
                children: [
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.brown,
                  ),
                  Container(
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 12,
              right: 12,
              bottom: 12,
              child: LayoutBuilder(builder: (context, constraint) {
                var width = 100.0;
                double left = controller.selectedIndex *
                    ((constraint.biggest.width - 24) / 4);

                List colorList = [
                  Colors.green,
                  Colors.red,
                  Colors.blue,
                  Colors.purple,
                ];
                return Container(
                  padding: const EdgeInsets.all(12.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: 60.0,
                        width: width,
                        margin: EdgeInsets.only(
                          left: left,
                        ),
                        decoration: BoxDecoration(
                          color: colorList[controller.selectedIndex],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: List.generate(
                          controller.menuList.length,
                          (index) {
                            var item = controller.menuList[index];
                            return Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.selectedIndex = index;
                                  controller.setState(() {});
                                },
                                child: SizedBox(
                                  height: 60.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(item["icon"]),
                                      Text(
                                        "${item["label"]}",
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: LayoutBuilder(builder: (context, constraint) {
                var width = 100.0;
                double top = controller.selectedIndex * (300 - 24) / 4;

                List colorList = [
                  Colors.green,
                  Colors.red,
                  Colors.blue,
                  Colors.purple,
                ];
                return Container(
                  padding: const EdgeInsets.all(12.0),
                  width: 70.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: 60.0,
                        width: width,
                        margin: EdgeInsets.only(
                          top: top,
                        ),
                        decoration: BoxDecoration(
                          color: colorList[controller.selectedIndex],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: List.generate(
                          controller.menuList.length,
                          (index) {
                            var item = controller.menuList[index];
                            return Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.selectedIndex = index;
                                  controller.setState(() {});
                                },
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 60.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(item["icon"]),
                                      Text(
                                        "${item["label"]}",
                                        style: const TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<LtsmNavigationWithSlideAnimationView> createState() =>
      LtsmNavigationWithSlideAnimationController();
}
