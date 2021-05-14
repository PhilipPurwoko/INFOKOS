import 'package:flutter/material.dart';
import 'package:infokos/widgets/categories/category_kosan_screen.dart';
import 'package:infokos/widgets/categories/category_select_screen.dart';
import 'package:infokos/widgets/kosan/kosan_detail_screen.dart';

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  CategorySelectScreen.routeName: (ctx) => CategorySelectScreen(),
  CategoryKosanScreen.routeName: (ctx) => CategoryKosanScreen(),
  KosanDetailScreen.routeName: (ctx) => KosanDetailScreen(),
};
