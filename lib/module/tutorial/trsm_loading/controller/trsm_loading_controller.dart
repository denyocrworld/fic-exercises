import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_loading_view.dart';

class TrsmLoadingController extends State<TrsmLoadingView>
    implements MvcController {
  static late TrsmLoadingController instance;
  late TrsmLoadingView view;
  bool loading = false;

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
