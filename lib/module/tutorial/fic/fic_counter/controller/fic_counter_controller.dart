import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fic_counter_view.dart';

class FicCounterController extends State<FicCounterView>
    implements MvcController {
  static late FicCounterController instance;
  late FicCounterView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int counter = 0;
}
