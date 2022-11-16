import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_chat_list_controller.dart';

class TrsmChatListView extends StatefulWidget {
  const TrsmChatListView({Key? key}) : super(key: key);

  Widget build(context, TrsmChatListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmChatList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.chatList.length,
                itemBuilder: (context, index) {
                  var item = controller.chatList[index];
                  return InkWell(
                    onTap: () {
                      item["read"] = true;
                      controller.setState(() {});
                    },
                    child: Card(
                      color: item["read"] ? Colors.grey : Colors.green,
                      child: ListTile(
                        title: Text("${item["name"]}"),
                        subtitle: Text("${item["message"]}"),
                        trailing: Icon(
                          Icons.check,
                          size: item["read"] ? 12.0 : 0,
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
  State<TrsmChatListView> createState() => TrsmChatListController();
}
