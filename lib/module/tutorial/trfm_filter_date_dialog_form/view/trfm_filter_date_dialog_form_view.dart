import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_filter_date_dialog_form_controller.dart';

class TrfmFilterDateDialogFormView extends StatefulWidget {
  const TrfmFilterDateDialogFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmFilterDateDialogFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmFilterDateDialogForm"),
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
  State<TrfmFilterDateDialogFormView> createState() => TrfmFilterDateDialogFormController();
}