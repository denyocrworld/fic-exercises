import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fic_enable_or_disabled_view.dart';

class FicEnableOrDisabledController extends State<FicEnableOrDisabledView>
    implements MvcController {
  static late FicEnableOrDisabledController instance;
  late FicEnableOrDisabledView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool enabled = false;

  String email = "";
  String password = "";

  bool get isValidForm {
    if (email.isEmpty || password.isEmpty) {
      return false;
    }
    return true;
  }
}
