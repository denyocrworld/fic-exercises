import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_loading_view.dart';

class LtsmLoadingController extends State<LtsmLoadingView>
    implements MvcController {
  static late LtsmLoadingController instance;
  late LtsmLoadingView view;

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
