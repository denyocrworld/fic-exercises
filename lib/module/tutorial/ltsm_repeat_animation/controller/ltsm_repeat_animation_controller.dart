import 'dart:async';

import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_repeat_animation_view.dart';

class LtsmRepeatAnimationController extends State<LtsmRepeatAnimationView>
    implements MvcController {
  static late LtsmRepeatAnimationController instance;
  late LtsmRepeatAnimationView view;

  Timer? timer;
  @override
  void initState() {
    instance = this;
    timer = Timer.periodic(
      const Duration(milliseconds: 900),
      (timer) {
        visible = !visible;
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool visible = true;
}
