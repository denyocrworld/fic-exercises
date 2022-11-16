import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_rotate_animation_view.dart';

class TrsmRotateAnimationController extends State<TrsmRotateAnimationView>
    implements MvcController {
  static late TrsmRotateAnimationController instance;
  late TrsmRotateAnimationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool rotate = false;
  double slideValue = 0.0;
}
