import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fic_visibility_controller.dart';

class FicVisibilityView extends StatefulWidget {
  const FicVisibilityView({Key? key}) : super(key: key);

  Widget build(context, FicVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FicVisibility"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Visible: ${controller.visible}",
                style: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Update State"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.visible = !controller.visible;
                  controller.setState(() {});
                },
              ),
              if (controller.visible)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          initialValue: 'admin@gmail.com',
                          maxLength: 20,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.blueGrey,
                            ),
                            suffixIcon: Icon(
                              Icons.email,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            helperText: 'Enter your email address',
                          ),
                          onChanged: (value) {},
                        ),
                        TextFormField(
                          initialValue: '123456',
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
                          onChanged: (value) {},
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.login),
                          label: const Text("Login"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {},
                        ),
                      ],
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
  State<FicVisibilityView> createState() => FicVisibilityController();
}
