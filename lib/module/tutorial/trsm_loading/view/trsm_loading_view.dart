import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_loading_controller.dart';

class TrsmLoadingView extends StatefulWidget {
  const TrsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, TrsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmLoading"),
        actions: const [],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (controller.loading) const CircularProgressIndicator(),
            const SizedBox(
              height: 20.0,
            ),
            if (controller.loading == false)
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = {};
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: const NetworkImage(
                          "https://i.ibb.co/QrTHd59/woman.jpg",
                        ),
                      ),
                      title: const Text("Jessica Doe"),
                      subtitle: const Text("Programmer"),
                    ),
                  );
                },
              ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.developer_board),
              label: const Text("loading=true"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                controller.loading = true;
                controller.setState(() {});
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.developer_board),
              label: const Text("loading=false"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                controller.loading = false;
                controller.setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TrsmLoadingView> createState() => TrsmLoadingController();
}
