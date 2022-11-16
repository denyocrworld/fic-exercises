import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_visibility_controller.dart';

class TrsmVisibilityView extends StatefulWidget {
  const TrsmVisibilityView({Key? key}) : super(key: key);

  Widget build(context, TrsmVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmVisibility"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "visible = ${controller.visible}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.developer_board),
                      label: const Text("Visible"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        controller.visible = true;
                        controller.setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.developer_board),
                      label: const Text("Invisible"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        controller.visible = false;
                        controller.setState(() {});
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              if (controller.visible)
                Container(
                  height: 100.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.ibb.co/3pPYd14/freeban.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 1200),
                height: controller.visible ? 100.0 : 0.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.ibb.co/3pPYd14/freeban.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
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
  State<TrsmVisibilityView> createState() => TrsmVisibilityController();
}
