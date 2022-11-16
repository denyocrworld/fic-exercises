import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_reset_password_form_controller.dart';

class TrfmResetPasswordFormView extends StatefulWidget {
  const TrfmResetPasswordFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmResetPasswordFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmResetPasswordForm"),
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
  State<TrfmResetPasswordFormView> createState() => TrfmResetPasswordFormController();
}