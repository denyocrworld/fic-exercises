import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fic_visibility_view.dart';

class FicVisibilityController extends State<FicVisibilityView>
    implements MvcController {
  static late FicVisibilityController instance;
  late FicVisibilityView view;

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
