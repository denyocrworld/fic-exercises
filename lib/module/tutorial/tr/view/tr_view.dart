import 'package:flutter/material.dart';
import 'package:example/core.dart';

/*
KITA START 7:30 YAA!
FRAMEWORK: FLUTTER
BAHASA: DART
----
- State Management
- Form

DART itu:
- Backend
- Frontend
  Android, IOS, Windows, Mac, Linux, Web
*/

class TrView extends StatefulWidget {
  const TrView({Key? key}) : super(key: key);

  header(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      width: MediaQuery.of(Get.currentContext).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget build(context, TrController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial View"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              header("State Management"),
              LayoutBuilder(builder: (context, constraints) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    controller.items.length,
                    (index) {
                      var item = controller.items[index];
                      var size = (constraints.biggest.width - (10 * 3)) / 4;
                      return TutorialNavigationItem(
                        item: item,
                        size: size,
                        index: index,
                      );
                    },
                  ),
                );
              }),
              header("Form"),
              LayoutBuilder(builder: (context, constraints) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    controller.formItems.length,
                    (index) {
                      var item = controller.formItems[index];
                      var size = (constraints.biggest.width - (10 * 3)) / 4;
                      return TutorialNavigationItem(
                        item: item,
                        size: size,
                        index: index,
                      );
                    },
                  ),
                );
              }),
              header("State Management Exercise"),
              LayoutBuilder(builder: (context, constraints) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    controller.stateManagementExerciseList.length,
                    (index) {
                      var item = controller.stateManagementExerciseList[index];
                      var size = (constraints.biggest.width - (10 * 3)) / 4;
                      return TutorialNavigationItem(
                        item: item,
                        size: size,
                        index: index,
                        color: Colors.green,
                      );
                    },
                  ),
                );
              }),
              header("Form Exercise"),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.app_registration_rounded),
                      label: const Text("Form (Reuseable)"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FormExampleView(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.app_registration_rounded),
                      label: const Text("Form"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const FormExampleNonReuseableView(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              LayoutBuilder(builder: (context, constraints) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    controller.formExerciseList.length,
                    (index) {
                      var item = controller.formExerciseList[index];
                      var size = (constraints.biggest.width - (10 * 3)) / 4;
                      return TutorialNavigationItem(
                        item: item,
                        size: size,
                        index: index,
                        color: Colors.green,
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrView> createState() => TrController();
}
