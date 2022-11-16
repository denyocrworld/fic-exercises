import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_reset_password_form_view.dart';

class TrfmResetPasswordFormController extends State<TrfmResetPasswordFormView> implements MvcController {
  static late TrfmResetPasswordFormController instance;
  late TrfmResetPasswordFormView view;

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