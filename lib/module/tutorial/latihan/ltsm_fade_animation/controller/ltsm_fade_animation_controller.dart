import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_fade_animation_view.dart';

class LtsmFadeAnimationController extends State<LtsmFadeAnimationView> implements MvcController {
  static late LtsmFadeAnimationController instance;
  late LtsmFadeAnimationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}