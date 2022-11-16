import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_horizontal_category_list_view.dart';

class TrsmHorizontalCategoryListController
    extends State<TrsmHorizontalCategoryListView> implements MvcController {
  static late TrsmHorizontalCategoryListController instance;
  late TrsmHorizontalCategoryListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List categoryList = [
    "Food",
    "Drink",
    "Main Course",
    "Snack",
    "Ice Cream",
  ];

  String? selectedCategory;
}
