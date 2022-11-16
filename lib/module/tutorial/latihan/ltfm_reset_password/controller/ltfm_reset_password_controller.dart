import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltfm_reset_password_view.dart';

class LtfmResetPasswordController extends State<LtfmResetPasswordView> implements MvcController {
  static late LtfmResetPasswordController instance;
  late LtfmResetPasswordView view;

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