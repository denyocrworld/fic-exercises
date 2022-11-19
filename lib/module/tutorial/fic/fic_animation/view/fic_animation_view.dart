import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fic_animation_controller.dart';

class FicAnimationView extends StatefulWidget {
  const FicAnimationView({Key? key}) : super(key: key);

  Widget build(context, FicAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FicAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Animate: ${controller.animate}",
                style: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Update State"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.animate = !controller.animate;
                  controller.setState(() {});
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200.0,
                color: Colors.green[100],
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 900),
                      left: controller.animate ? 140 : 0,
                      top: controller.animate ? 140 : 0,
                      child: const FlutterLogo(
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 900),
                opacity: controller.animate ? 0.0 : 1.0,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 900),
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: controller.animate ? Colors.red : Colors.purple,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 100),
                turns: (controller.animate ? 270 : 0) / 360,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 900),
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: controller.animate ? Colors.green : Colors.pink,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedScale(
                duration: const Duration(milliseconds: 2000),
                scale: controller.animate ? 1.5 : 1.0,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 900),
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: controller.animate ? Colors.green : Colors.orange,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
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
  State<FicAnimationView> createState() => FicAnimationController();
}
