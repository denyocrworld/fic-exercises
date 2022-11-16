import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_signup_form_controller.dart';

class TrfmSignupFormView extends StatefulWidget {
  const TrfmSignupFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmSignupFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmSignupForm"),
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
  State<TrfmSignupFormView> createState() => TrfmSignupFormController();
}