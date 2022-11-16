import 'package:example/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();

  return runApp(MaterialApp(
    title: 'FIC Exercises',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: const TrView(),
  ));
}
