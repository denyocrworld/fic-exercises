import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_edit_profile_form_view.dart';

class TrfmEditProfileFormController extends State<TrfmEditProfileFormView> implements MvcController {
  static late TrfmEditProfileFormController instance;
  late TrfmEditProfileFormView view;

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