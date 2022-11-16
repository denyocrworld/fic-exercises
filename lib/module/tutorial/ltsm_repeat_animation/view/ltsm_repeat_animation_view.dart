import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_repeat_animation_controller.dart';

class LtsmRepeatAnimationView extends StatefulWidget {
  const LtsmRepeatAnimationView({Key? key}) : super(key: key);

  Widget build(context, LtsmRepeatAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmRepeatAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedOpacity(
                duration: const Duration(milliseconds: 900),
                opacity: controller.visible ? 1.0 : 0.0,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.only(
                  left: controller.visible ? 200 : 0.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              // AnimatedRotation(
              //   duration: const Duration(milliseconds: 900),
              //   turns: controller.visible ? 10 : 0 / 360,
              //   child: Container(
              //     height: 100.0,
              //     width: 100.0,
              //     margin: EdgeInsets.only(
              //       left: controller.visible ? 200 : 0.0,
              //     ),
              //     decoration: const BoxDecoration(
              //       color: Colors.red,
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(
              //           16.0,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                height: controller.visible ? 200 : 100.0,
                width: controller.visible ? 200 : 100.0,
                margin: const EdgeInsets.only(
                  left: 100,
                ),
                decoration: BoxDecoration(
                  color: controller.visible ? Colors.blue : Colors.green,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmRepeatAnimationView> createState() =>
      LtsmRepeatAnimationController();
}
