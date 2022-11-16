import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_product_form_view.dart';

class TrfmProductFormController extends State<TrfmProductFormView> implements MvcController {
  static late TrfmProductFormController instance;
  late TrfmProductFormView view;

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