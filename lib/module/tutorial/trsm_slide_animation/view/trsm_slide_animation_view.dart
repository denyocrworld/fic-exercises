import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_slide_animation_controller.dart';

class TrsmSlideAnimationView extends StatefulWidget {
  const TrsmSlideAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmSlideAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmSlideAnimation"),
        actions: const [],
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 900),
            top: 100,
            right: controller.visible ? 0 : -200,
            child: InkWell(
              onTap: () {
                controller.visible = controller.visible ? false : true;
                controller.setState(() {});
              },
              child: Row(
                children: [
                  const Icon(Icons.chevron_left),
                  const Icon(Icons.card_giftcard),
                  Container(
                    width: 200,
                    height: 200.0,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 900),
            top: 300,
            left: controller.visible ? 0 : -200,
            child: InkWell(
              onTap: () {
                controller.visible = controller.visible ? false : true;
                controller.setState(() {});
              },
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 200.0,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                  const Icon(Icons.card_giftcard),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 900),
            top: controller.visible ? 0 : -200,
            left: 0,
            child: InkWell(
              onTap: () {
                controller.visible = controller.visible ? false : true;
                controller.setState(() {});
              },
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 200.0,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                  const Icon(Icons.card_giftcard),
                  const Icon(Icons.arrow_downward),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 900),
            bottom: controller.visible ? 0 : -200,
            right: 0,
            child: InkWell(
              onTap: () {
                controller.visible = controller.visible ? false : true;
                controller.setState(() {});
              },
              child: Column(
                children: [
                  const Icon(Icons.arrow_upward),
                  const Icon(Icons.card_giftcard),
                  Container(
                    width: 200,
                    height: 200.0,
                    decoration: const BoxDecoration(
                      color: Colors.red,
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
  State<TrsmSlideAnimationView> createState() => TrsmSlideAnimationController();
}
