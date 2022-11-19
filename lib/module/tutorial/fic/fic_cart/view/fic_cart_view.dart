import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fic_cart_controller.dart';

class FicCartView extends StatefulWidget {
  const FicCartView({Key? key}) : super(key: key);

  Widget build(context, FicCartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FicCart"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  item["qty"] = item["qty"] ?? 0;

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
  State<FicCartView> createState() => FicCartController();
}
