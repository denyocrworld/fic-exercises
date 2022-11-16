import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_signup_form_view.dart';

class TrfmSignupFormController extends State<TrfmSignupFormView> implements MvcController {
  static late TrfmSignupFormController instance;
  late TrfmSignupFormView view;

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