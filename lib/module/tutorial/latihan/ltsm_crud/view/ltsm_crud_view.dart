import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_crud_controller.dart';

class LtsmCrudView extends StatefulWidget {
  const LtsmCrudView({Key? key}) : super(key: key);

  Widget build(context, LtsmCrudController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmCrud"),
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //TODO: tambahkan map ini ke dalam products list
          //gunakan: controller.products.add()
          // jgn lupa panggil setState setelah-nya
          /*
          */
          Map newProduct = {
            "photo":
                "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
            "product_name": "New Product",
            "price": 25,
            "category": "Food",
            "description":
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
          };
        },
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
                  //TODO: hapus item dari list
                  //gunakan: controller.products.remove(item) atau
                  //gunakan: controller.products.removeAt(index) atau
                  //panggil kode itu di dalam event onTap()
                  // jgn lupa panggil setState setelah-nya
                  return InkWell(
                    onTap: () {},
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
                        trailing: IconButton(
                          onPressed: () {
                            //TODO: update harga item ketika di klik
                            //gunakan kode ini:
                            // item["price"] = 44;
                            // jgn lupa panggil setState setelah-nya
                          },
                          icon: const Icon(
                            Icons.edit,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<LtsmCrudView> createState() => LtsmCrudController();
}
