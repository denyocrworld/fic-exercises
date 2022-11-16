import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_login_view.dart';

class TrfmLoginController extends State<TrfmLoginView> implements MvcController {
  static late TrfmLoginController instance;
  late TrfmLoginView view;

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