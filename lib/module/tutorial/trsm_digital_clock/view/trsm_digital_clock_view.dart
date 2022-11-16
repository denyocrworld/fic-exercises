import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_digital_clock_controller.dart';

class TrsmDigitalClockView extends StatefulWidget {
  const TrsmDigitalClockView({Key? key}) : super(key: key);

  Widget build(context, TrsmDigitalClockController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmDigitalClock"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                controller.formattedCurrentDate,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                controller.kkmmss,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                controller.eventDateInHour,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                controller.eventDateInSecond,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrsmDigitalClockView> createState() => TrsmDigitalClockController();
}
