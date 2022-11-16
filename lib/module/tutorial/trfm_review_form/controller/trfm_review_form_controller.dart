import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trfm_review_form_view.dart';

class TrfmReviewFormController extends State<TrfmReviewFormView> implements MvcController {
  static late TrfmReviewFormController instance;
  late TrfmReviewFormView view;

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