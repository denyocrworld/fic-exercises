import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_filter_category_and_date_bottomsheet_form_view.dart';

class TrfmFilterCategoryAndDateBottomsheetFormController extends State<TrfmFilterCategoryAndDateBottomsheetFormView> implements MvcController {
  static late TrfmFilterCategoryAndDateBottomsheetFormController instance;
  late TrfmFilterCategoryAndDateBottomsheetFormView view;

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