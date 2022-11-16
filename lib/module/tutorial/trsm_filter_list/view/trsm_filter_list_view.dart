import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_filter_list_controller.dart';

class TrsmFilterListView extends StatefulWidget {
  const TrsmFilterListView({Key? key}) : super(key: key);

  Widget build(context, TrsmFilterListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmFilterList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              maxLength: 20,
              decoration: const InputDecoration(
                labelText: 'Search',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              onChanged: (value) {
                controller.search = value;
                controller.setState(() {});
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = controller.products[index];

                  if (controller.search.isNotEmpty) {
                    var search = controller.search.toLowerCase();
                    var productName =
                        item["product_name"].toString().toLowerCase();
                    if (!productName.contains(search)) {
                      return Container();
                    }
                  }

                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      title: Text("${item["product_name"]}"),
                      subtitle: Text("${item["price"]}"),
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
  State<TrsmFilterListView> createState() => TrsmFilterListController();
}
