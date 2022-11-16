import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_animation_by_mouse_event_controller.dart';

class TrsmAnimationByMouseEventView extends StatefulWidget {
  const TrsmAnimationByMouseEventView({Key? key}) : super(key: key);

  Widget build(context, TrsmAnimationByMouseEventController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmAnimationByMouseEvent"),
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
              MouseRegion(
                onEnter: (e) {},
                onExit: (e) {
                  controller.enabled = false;
                  controller.setState(() {});
                },
                onHover: (e) {
                  controller.enabled = true;
                  controller.setState(() {});
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: controller.enabled ? Colors.blue : Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(controller.enabled ? 100 : 12.0),
                    ),
                  ),
                ),
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
  State<TrsmAnimationByMouseEventView> createState() =>
      TrsmAnimationByMouseEventController();
}
