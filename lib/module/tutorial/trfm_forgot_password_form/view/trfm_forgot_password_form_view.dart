import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_forgot_password_form_controller.dart';

class TrfmForgotPasswordFormView extends StatefulWidget {
  const TrfmForgotPasswordFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmForgotPasswordFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmForgotPasswordForm"),
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
  State<TrfmForgotPasswordFormView> createState() => TrfmForgotPasswordFormController();
}