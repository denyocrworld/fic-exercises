import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fic_navigation_view.dart';

class FicNavigationController extends State<FicNavigationView>
    implements MvcController {
  static late FicNavigationController instance;
  late FicNavigationView view;

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
}
