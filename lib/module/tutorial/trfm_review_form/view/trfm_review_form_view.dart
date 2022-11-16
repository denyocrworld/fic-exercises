import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_review_form_controller.dart';

class TrfmReviewFormView extends StatefulWidget {
  const TrfmReviewFormView({Key? key}) : super(key: key);

  Widget build(context, TrfmReviewFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmReviewForm"),
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
  State<TrfmReviewFormView> createState() => TrfmReviewFormController();
}