import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_edit_store_form_controller.dart';

class TrfmEditStoreFormView extends StatefulWidget {
  const TrfmEditStoreFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmEditStoreFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmEditStoreForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TrfmEditStoreFormView> createState() => TrfmEditStoreFormController();
}