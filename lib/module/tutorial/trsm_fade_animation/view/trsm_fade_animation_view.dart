import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_fade_animation_controller.dart';

class TrsmFadeAnimationView extends StatefulWidget {
  const TrsmFadeAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmFadeAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmFadeAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.visible}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Set Visibility"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.visible = controller.visible ? false : true;
                  controller.setState(() {});
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
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
              AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: controller.visible ? 1.0 : 0.0,
                child: const Icon(
                  Icons.developer_board,
                  size: 100.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 2000),
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(
                    controller.visible ? 1.0 : 0.0,
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
  State<TrsmFadeAnimationView> createState() => TrsmFadeAnimationController();
}
