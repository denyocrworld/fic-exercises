import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_visibility_view.dart';

class TrsmVisibilityController extends State<TrsmVisibilityView>
    implements MvcController {
  static late TrsmVisibilityController instance;
  late TrsmVisibilityView view;
  bool visible = false;

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
