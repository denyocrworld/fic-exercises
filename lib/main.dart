import 'package:example/core.dart';
import 'package:flutter/material.dart';

// Daftar soal ada di dalam sini yaa,
// Silahkan dibuka

// ? LINK GITHUB:
// https://github.com/denyocrworld/fic-exercises

// ? Link Golden Ticket (untuk umum) | member FIC tidak perlu isi ini
// https://tinyurl.com/fic-golden-ticket

// ? LINK JOIN FUGI:
// https://tinyurl.com/join-fugi

late TrController t;
late FormExampleView reuseableWidgetForm;
late FormExampleNonReuseableView nonReuseableWidgetForm;

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

/*
1. Video (Maksimal 5 Menit)
2. Di upload Youtube
*/