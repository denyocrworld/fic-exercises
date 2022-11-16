import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_filter_category_and_date_bottomsheet_form_controller.dart';

class TrfmFilterCategoryAndDateBottomsheetFormView extends StatefulWidget {
  const TrfmFilterCategoryAndDateBottomsheetFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmFilterCategoryAndDateBottomsheetFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmFilterCategoryAndDateBottomsheetForm"),
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
  State<TrfmFilterCategoryAndDateBottomsheetFormView> createState() => TrfmFilterCategoryAndDateBottomsheetFormController();
}