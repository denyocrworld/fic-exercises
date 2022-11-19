import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fic_loading_controller.dart';

class FicLoadingView extends StatefulWidget {
  const FicLoadingView({Key? key}) : super(key: key);

  Widget build(context, FicLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FicLoading"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "loading: ${controller.loading}",
                style: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              if (controller.loading) const CircularProgressIndicator(),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Update loading state"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.loading = !controller.loading;
                  controller.setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FicLoadingView> createState() => FicLoadingController();
}
