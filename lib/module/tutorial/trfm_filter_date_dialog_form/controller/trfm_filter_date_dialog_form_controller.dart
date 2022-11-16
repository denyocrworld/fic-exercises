import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_filter_date_dialog_form_view.dart';

class TrfmFilterDateDialogFormController extends State<TrfmFilterDateDialogFormView> implements MvcController {
  static late TrfmFilterDateDialogFormController instance;
  late TrfmFilterDateDialogFormView view;

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