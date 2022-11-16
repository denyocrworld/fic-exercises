import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_scale_animation_view.dart';

class TrsmScaleAnimationController extends State<TrsmScaleAnimationView>
    implements MvcController {
  static late TrsmScaleAnimationController instance;
  late TrsmScaleAnimationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool scaleOut = false;
  bool scaleIn = false;
}
