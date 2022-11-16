import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_counter_view.dart';

class LtsmCounterController extends State<LtsmCounterView>
    implements MvcController {
  static late LtsmCounterController instance;
  late LtsmCounterView view;

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
  updateCounter() {
    counter++;
    setState(() {});
  }
}
