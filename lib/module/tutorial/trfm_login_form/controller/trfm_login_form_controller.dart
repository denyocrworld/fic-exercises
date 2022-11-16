import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_login_form_view.dart';

class TrfmLoginFormController extends State<TrfmLoginFormView> implements MvcController {
  static late TrfmLoginFormController instance;
  late TrfmLoginFormView view;

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