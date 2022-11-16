import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_animation_controller.dart';

class TrsmAnimationView extends StatefulWidget {
  const TrsmAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmAnimationController controller) {
    controller.view = this;

    // 1. merubah warna
    // 2. mengubah ukuran
    // AnimatedContainer

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${controller.enabled}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.animation),
                label: const Text("Animate"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.enabled = controller.enabled ? false : true;
                  controller.setState(() {});
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.only(
                  left: controller.enabled ? 200 : 0.0,
                ),
                decoration: BoxDecoration(
                  color: controller.enabled ? Colors.blue : Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(controller.enabled ? 100 : 12.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 3000),
                      left: controller.enabled ? 200 : 0,
                      top: controller.enabled ? 200 : 0,
                      child: const Icon(Icons.person),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                height: controller.enabled ? 300 : 200.0,
                width: controller.enabled ? 300 : 200.0,
                decoration: BoxDecoration(
                  color: controller.enabled ? Colors.blue : Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(controller.enabled ? 100 : 12.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrsmAnimationView> createState() => TrsmAnimationController();
}
