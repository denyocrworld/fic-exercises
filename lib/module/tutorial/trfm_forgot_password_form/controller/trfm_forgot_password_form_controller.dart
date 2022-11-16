import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_forgot_password_form_view.dart';

class TrfmForgotPasswordFormController extends State<TrfmForgotPasswordFormView> implements MvcController {
  static late TrfmForgotPasswordFormController instance;
  late TrfmForgotPasswordFormView view;

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