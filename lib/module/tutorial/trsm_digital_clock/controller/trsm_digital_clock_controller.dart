import 'dart:async';

import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TrsmDigitalClockController extends State<TrsmDigitalClockView>
    implements MvcController {
  static late TrsmDigitalClockController instance;
  late TrsmDigitalClockView view;

  Timer? timer;
  DateTime? currentDate;
  DateTime eventDate = DateTime(2022, 12, 20);

  String get formattedCurrentDate {
    if (currentDate == null) return "-";
    return DateFormat("d MMM y kk:mm:ss").format(currentDate!);
  }

  String get kkmmss {
    if (currentDate == null) return "-";
    return DateFormat("kk:mm:ss").format(currentDate!);
  }

  String get eventDateInHour {
    if (currentDate == null) return "-";
    var diff = eventDate.difference(currentDate!).inHours;
    return "$diff Hours before $eventDate";
  }

  String get eventDateInSecond {
    if (currentDate == null) return "-";
    var diff = eventDate.difference(currentDate!).inSeconds;
    return "$diff Seconds before $eventDate";
  }

  @override
  void initState() {
    instance = this;
    super.initState();

    timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      currentDate = DateTime.now();
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
