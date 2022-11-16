import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_loading_for_http_request_controller.dart';

class TrsmLoadingForHttpRequestView extends StatefulWidget {
  const TrsmLoadingForHttpRequestView({Key? key}) : super(key: key);

  Widget build(context, TrsmLoadingForHttpRequestController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmLoadingForHttpRequest"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.refresh),
              label: const Text("Refresh"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.loadUsers(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            if (controller.loading) const CircularProgressIndicator(),
            const SizedBox(
              height: 2.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.userList.length,
                itemBuilder: (context, index) {
                  var item = controller.userList[index];

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
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TrsmLoadingForHttpRequestView> createState() =>
      TrsmLoadingForHttpRequestController();
}
