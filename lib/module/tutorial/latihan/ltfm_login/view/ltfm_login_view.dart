import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmLoginView extends StatefulWidget {
  const LtfmLoginView({Key? key}) : super(key: key);

  Widget build(context, LtfmLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmLogin"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Ini adalah kode untuk membuat textfield email dengan reuseable widget
              QTextField(
                value: "demo@gmail.com",
                label: "Email",
                hint: "Your email",
                onChanged: (value) {},
              ),

              //! 2. Buat kode yang sama, atur value-nya menjadi:
              // value: 123456
              // hint: Your password
              // label: Password
              // obscure: true

              QTextField(
                value: "123456",
                label: "Password",
                hint: "Your password",
                obscure: true,
                onChanged: (value) {},
              ),

              //! 3. Buat sebuah tombol,
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai

              ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.doLogin(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmLoginView> createState() => LtfmLoginController();
}
