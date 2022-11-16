import 'package:example/core.dart';
import 'package:flutter/material.dart';

// Daftar soal ada di dalam sini yaa,
// Silahkan dibuka
late TrController t;

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
