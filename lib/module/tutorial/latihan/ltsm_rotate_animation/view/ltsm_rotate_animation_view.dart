import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_rotate_animation_controller.dart';

class LtsmRotateAnimationView extends StatefulWidget {
  const LtsmRotateAnimationView({Key? key}) : super(key: key);

  Widget build(context, LtsmRotateAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmRotateAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //TODO: Buat variabel animate di dalam State/Controller
              // bool animate = false;
              AnimatedRotation(
                //TODO:
                //jika animate == true, atur derajat rotasinya menjadi 90
                //jika animate == false, atur opacity menjadi 0
                turns: 15 / 360,
                duration: const Duration(milliseconds: 2000),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  margin: const EdgeInsets.only(),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(1.0),
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
  State<LtsmRotateAnimationView> createState() =>
      LtsmRotateAnimationController();
}
