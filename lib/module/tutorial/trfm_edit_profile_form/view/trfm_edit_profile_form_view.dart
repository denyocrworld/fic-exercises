import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_edit_profile_form_controller.dart';

class TrfmEditProfileFormView extends StatefulWidget {
  const TrfmEditProfileFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmEditProfileFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmEditProfileForm"),
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
  State<TrfmEditProfileFormView> createState() => TrfmEditProfileFormController();
}