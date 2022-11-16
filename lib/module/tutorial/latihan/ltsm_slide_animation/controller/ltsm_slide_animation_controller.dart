import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_slide_animation_view.dart';

class LtsmSlideAnimationController extends State<LtsmSlideAnimationView> implements MvcController {
  static late LtsmSlideAnimationController instance;
  late LtsmSlideAnimationView view;

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