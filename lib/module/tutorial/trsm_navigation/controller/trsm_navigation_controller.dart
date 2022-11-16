import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_navigation_view.dart';

class TrsmNavigationController extends State<TrsmNavigationView>
    implements MvcController {
  static late TrsmNavigationController instance;
  late TrsmNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  List navigationItems = [
    {
      "label": "Home",
      "icon": Icons.home,
    },
    {
      "label": "Order",
      "icon": Icons.list,
    },
    {
      "label": "Favorite",
      "icon": Icons.favorite,
    },
    {
      "label": "Profile",
      "icon": Icons.person,
    }
  ];
}
