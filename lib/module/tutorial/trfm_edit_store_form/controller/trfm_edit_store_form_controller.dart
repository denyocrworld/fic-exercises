import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_edit_store_form_view.dart';

class TrfmEditStoreFormController extends State<TrfmEditStoreFormView> implements MvcController {
  static late TrfmEditStoreFormController instance;
  late TrfmEditStoreFormView view;

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