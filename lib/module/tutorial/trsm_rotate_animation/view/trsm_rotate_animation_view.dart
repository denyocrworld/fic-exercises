import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_rotate_animation_controller.dart';

class TrsmRotateAnimationView extends StatefulWidget {
  const TrsmRotateAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmRotateAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmRotateAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.rotate}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Rotate"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.rotate = controller.rotate ? false : true;
                  controller.setState(() {});
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedRotation(
                // turns: 1.0 * 30,
                turns: (controller.rotate ? 180 : 0) / 360,
                duration: const Duration(milliseconds: 900),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: const BorderRadius.all(
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
              const SizedBox(
                height: 20.0,
              ),
              Slider(
                value: controller.slideValue,
                onChanged: (value) {
                  controller.slideValue = value;
                  controller.setState(() {});
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedRotation(
                // turns: 1.0 * 30,
                turns: (controller.slideValue * 360) / 360,
                duration: const Duration(milliseconds: 900),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.green,
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
              Transform(
                transform: Matrix4.identity()
                  ..rotateZ((controller.slideValue * 360) * 3.1415927 / 180),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
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
  State<TrsmRotateAnimationView> createState() =>
      TrsmRotateAnimationController();
}
