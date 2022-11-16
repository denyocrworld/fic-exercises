import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_slide_animation_view.dart';

class TrsmSlideAnimationController extends State<TrsmSlideAnimationView>
    implements MvcController {
  static late TrsmSlideAnimationController instance;
  late TrsmSlideAnimationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool visible = false;
}
