import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trfm_login_controller.dart';

class TrfmLoginView extends StatefulWidget {
  const TrfmLoginView({Key? key}) : super(key: key);

  Widget build(context, TrfmLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrfmLogin"),
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
  State<TrfmLoginView> createState() => TrfmLoginController();
}