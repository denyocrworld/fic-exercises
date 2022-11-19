import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fic_filter_list_controller.dart';

class FicFilterListView extends StatefulWidget {
  const FicFilterListView({Key? key}) : super(key: key);

  Widget build(context, FicFilterListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FicFilterList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: null,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "What are you craving?",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                        hoverColor: Colors.transparent,
                      ),
                      onFieldSubmitted: (value) {
                        controller.search = value;
                        controller.setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  item["qty"] = item["qty"] ?? 0;

                  if (controller.search.isNotEmpty) {
                    var search = controller.search.toLowerCase();
                    var productName =
                        item["product_name"].toString().toLowerCase();
                    if (!productName.contains(search)) {
                      return Container();
                    }
                  }

                  return InkWell(
                    onTap: () {
                      // controller.products.remove(item);
                      controller.products.removeAt(index);
                      controller.setState(() {});
                    },
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            item["photo"],
                          ),
                        ),
                        title: Text("${item["product_name"]}"),
                        subtitle: Text("${item["price"]} USD"),
                        trailing: SizedBox(
                          width: 120.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                radius: 12.0,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {
                                      item["qty"]--;
                                      controller.setState(() {});
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 9.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${item["qty"]}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                radius: 12.0,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {
                                      item["qty"]++;
                                      controller.setState(() {});
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 9.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
  State<FicFilterListView> createState() => FicFilterListController();
}
