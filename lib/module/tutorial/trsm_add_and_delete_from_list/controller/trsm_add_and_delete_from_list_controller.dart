import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_add_and_delete_from_list_view.dart';

class TrsmAddAndDeleteFromListController
    extends State<TrsmAddAndDeleteFromListView> implements MvcController {
  static late TrsmAddAndDeleteFromListController instance;
  late TrsmAddAndDeleteFromListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List products = [];
}
