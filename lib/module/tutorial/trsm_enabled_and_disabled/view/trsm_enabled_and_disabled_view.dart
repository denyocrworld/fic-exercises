import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_enabled_and_disabled_controller.dart';

class TrsmEnabledAndDisabledView extends StatefulWidget {
  const TrsmEnabledAndDisabledView({Key? key}) : super(key: key);

  Widget build(context, TrsmEnabledAndDisabledController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmEnabledAndDisabled"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                initialValue: '',
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "Your email",
                ),
                onChanged: (value) {
                  controller.email = value;
                  controller.setState(() {});
                },
              ),
              TextFormField(
                initialValue: '',
                maxLength: 20,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.password,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'Enter your password',
                ),
                onChanged: (value) {
                  controller.password = value;
                  controller.setState(() {});
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: controller.loginButtonEnabled == false
                      ? Colors.grey
                      : Colors.blueGrey,
                ),
                onPressed: () {
                  if (!controller.loginButtonEnabled) return;
                  print("Hello world");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrsmEnabledAndDisabledView> createState() =>
      TrsmEnabledAndDisabledController();
}
