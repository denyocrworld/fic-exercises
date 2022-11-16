import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_product_form_controller.dart';

class TrfmProductFormView extends StatefulWidget {
  const TrfmProductFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmProductForm"),
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
  State<TrfmProductFormView> createState() => TrfmProductFormController();
}