import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_navigation_with_slide_animation_view.dart';

class LtsmNavigationWithSlideAnimationController
    extends State<LtsmNavigationWithSlideAnimationView>
    implements MvcController {
  static late LtsmNavigationWithSlideAnimationController instance;
  late LtsmNavigationWithSlideAnimationView view;

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
  List menuList = [
    {
      "icon": Icons.home,
      "label": "Home",
    },
    {
      "icon": Icons.list,
      "label": "Order",
    },
    {
      "icon": Icons.favorite,
      "label": "Favorite",
    },
    {
      "icon": Icons.person,
      "label": "Profile",
    }
  ];
}
