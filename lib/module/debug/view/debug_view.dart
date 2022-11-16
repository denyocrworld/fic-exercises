import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/debug_controller.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  Widget build(context, DebugController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Debug"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}