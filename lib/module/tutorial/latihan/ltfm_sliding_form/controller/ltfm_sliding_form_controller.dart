import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltfm_sliding_form_view.dart';

class LtfmSlidingFormController extends State<LtfmSlidingFormView>
    implements MvcController {
  static late LtfmSlidingFormController instance;
  late LtfmSlidingFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool submitted = false;
}
