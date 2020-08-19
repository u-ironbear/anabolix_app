// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/bottom_bar_view/bottom_bar_view.dart';
import '../ui/views/startup_view/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String bottomBarView = '/bottom-bar-view';
  static const all = <String>{
    startupView,
    bottomBarView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.bottomBarView, page: BottomBarView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    BottomBarView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomBarView(),
        settings: data,
      );
    },
  };
}
