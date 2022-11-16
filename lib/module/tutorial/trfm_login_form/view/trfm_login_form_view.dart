import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_login_form_controller.dart';

class TrfmLoginFormView extends StatefulWidget {
  const TrfmLoginFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmLoginFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmLoginForm"),
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
  State<TrfmLoginFormView> createState() => TrfmLoginFormController();
}