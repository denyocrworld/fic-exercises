import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_horizontal_category_list_view.dart';

class LtsmHorizontalCategoryListController extends State<LtsmHorizontalCategoryListView> implements MvcController {
  static late LtsmHorizontalCategoryListController instance;
  late LtsmHorizontalCategoryListView view;

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