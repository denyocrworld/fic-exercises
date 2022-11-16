import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmResetPasswordView extends StatefulWidget {
  const LtfmResetPasswordView({Key? key}) : super(key: key);

  Widget build(context, LtfmResetPasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmResetPassword"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextField(
                label: "Email",
                hint: "Your email",
                validator: Validator.email,
                value: "demo@gmail.com",
                onChanged: (value) {},
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text("Reset password"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              //! 1. Pindahkan textfield email dan button reset password ke dalam Column
              //! yang ada di dalam Card
              //! 2. Beri jarak antara textfield dan reset button sebanyak 30
              //! gunakan SizedBox(height: n)
              Card(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const [],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmResetPasswordView> createState() => LtfmResetPasswordController();
}
