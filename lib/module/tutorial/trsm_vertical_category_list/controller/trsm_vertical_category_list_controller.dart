import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_vertical_category_list_view.dart';

class TrsmVerticalCategoryListController
    extends State<TrsmVerticalCategoryListView> implements MvcController {
  static late TrsmVerticalCategoryListController instance;
  late TrsmVerticalCategoryListView view;

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
