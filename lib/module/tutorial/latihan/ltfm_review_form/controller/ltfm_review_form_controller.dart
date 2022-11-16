import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltfm_review_form_view.dart';

class LtfmReviewFormController extends State<LtfmReviewFormView> implements MvcController {
  static late LtfmReviewFormController instance;
  late LtfmReviewFormView view;

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