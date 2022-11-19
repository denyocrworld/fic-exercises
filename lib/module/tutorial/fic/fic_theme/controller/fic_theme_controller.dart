import 'package:example/module/tutorial/fic/fic_theme/theme/dark_theme.dart';
import 'package:example/module/tutorial/fic/fic_theme/theme/light_theme.dart';
import 'package:example/module/tutorial/fic/fic_theme/theme/purple_theme.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fic_theme_view.dart';

class FicThemeController extends State<FicThemeView> implements MvcController {
  static late FicThemeController instance;
  late FicThemeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<ThemeData> themeList = [
    lightTheme,
    darkTheme,
    purpleTheme,
  ];
  int selectedindex = 0;
}
