import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_counter_controller.dart';

class TrsmCounterView extends StatefulWidget {
  const TrsmCounterView({Key? key}) : super(key: key);

  Widget build(context, TrsmCounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmCounter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.remove),
                    label: const Text("Decrement"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.counter--;
                      controller.setState(() {});
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "${controller.counter}",
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text("Increment"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.counter++;
                      controller.setState(() {});
                    },
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.remove),
                    label: const Text("Decrement"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.counter -= 2;
                      controller.setState(() {});
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "${controller.counter}",
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text("Increment"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.counter += 2;
                      controller.setState(() {});
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrsmCounterView> createState() => TrsmCounterController();
}
