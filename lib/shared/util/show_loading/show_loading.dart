import 'package:example/core.dart';
import 'package:flutter/material.dart';

showLoading() async {
  await showDialog<void>(
    context: globalContext,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return const AlertDialog(
        content: CircularProgressIndicator(),
      );
    },
  );
}
