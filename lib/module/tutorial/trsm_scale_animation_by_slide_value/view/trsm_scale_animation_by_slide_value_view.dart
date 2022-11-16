import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_scale_animation_by_slide_value_controller.dart';

class TrsmScaleAnimationBySlideValueView extends StatefulWidget {
  const TrsmScaleAnimationBySlideValueView({Key? key}) : super(key: key);

  Widget build(context, TrsmScaleAnimationBySlideValueController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmScaleAnimationBySlideValue"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.slideValue}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
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
              AnimatedScale(
                duration: const Duration(milliseconds: 900),
                scale: controller.slideValue,
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
              AnimatedOpacity(
                duration: const Duration(milliseconds: 900),
                opacity: controller.slideValue,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
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
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                height: 100.0,
                width: controller.slideValue * 200,
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                width: 100.0,
                height: controller.slideValue * 200,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(
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
  State<TrsmScaleAnimationBySlideValueView> createState() =>
      TrsmScaleAnimationBySlideValueController();
}
