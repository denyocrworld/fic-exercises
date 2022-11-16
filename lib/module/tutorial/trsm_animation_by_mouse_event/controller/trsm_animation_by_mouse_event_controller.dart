import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_animation_by_mouse_event_view.dart';

class TrsmAnimationByMouseEventController
    extends State<TrsmAnimationByMouseEventView> implements MvcController {
  static late TrsmAnimationByMouseEventController instance;
  late TrsmAnimationByMouseEventView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  bool enabled = false;
}
