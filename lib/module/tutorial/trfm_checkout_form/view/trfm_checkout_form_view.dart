import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_checkout_form_controller.dart';

class TrfmCheckoutFormView extends StatefulWidget {
  const TrfmCheckoutFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmCheckoutFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmCheckoutForm"),
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
  State<TrfmCheckoutFormView> createState() => TrfmCheckoutFormController();
}