import 'package:flutter/material.dart';
import 'package:imitatejdshop/pages/home/SearchPage.dart';
import 'package:imitatejdshop/pages/tabs/Tabs.dart';

final routes = {
  '/': (context) => Tabs(),
  '/search': (context) => SearchPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name]!;
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      return MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments),
        settings: settings,
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
        settings: settings,
      );
    }
  }
};