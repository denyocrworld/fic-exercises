import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_fade_animation_controller.dart';

class LtsmFadeAnimationView extends StatefulWidget {
  const LtsmFadeAnimationView({Key? key}) : super(key: key);

  Widget build(context, LtsmFadeAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmFadeAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //TODO: Buat variabel animate di dalam State/Controller
              // bool animate = false;
              AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                height: 100.0,
                width: 100.0,
                margin: const EdgeInsets.only(),
                decoration: BoxDecoration(
                  //TODO:
                  //jika animate == true, atur opacity menjadi 0.5
                  //jika animate == false, atur opacity menjadi 1.0
                  color: Colors.red.withOpacity(1.0),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //TODO:
              //di dalam event onPressed(),
              //atur animate = true, jika nilai animate adalah false
              //atur animate = false, jika nilai animate adalah true
              ElevatedButton.icon(
                icon: const Icon(Icons.animation),
                label: const Text("Animate"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmFadeAnimationView> createState() => LtsmFadeAnimationController();
}
