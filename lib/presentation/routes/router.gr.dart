// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../customer/bought/invoice.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash.dart' as _i1;

class Router extends _i4.RootStackRouter {
  Router([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    SignInPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    BoughtInvoiceRoute.name: (routeData) {
      final args = routeData.argsAs<BoughtInvoiceRouteArgs>(
          orElse: () => const BoughtInvoiceRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.BoughtInvoice(key: args.key, boughtId: args.boughtId));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i4.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i4.RouteConfig(BoughtInvoiceRoute.name, path: '/bought-invoice')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i4.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i4.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.BoughtInvoice]
class BoughtInvoiceRoute extends _i4.PageRouteInfo<BoughtInvoiceRouteArgs> {
  BoughtInvoiceRoute({_i5.Key? key, String? boughtId})
      : super(BoughtInvoiceRoute.name,
            path: '/bought-invoice',
            args: BoughtInvoiceRouteArgs(key: key, boughtId: boughtId));

  static const String name = 'BoughtInvoiceRoute';
}

class BoughtInvoiceRouteArgs {
  const BoughtInvoiceRouteArgs({this.key, this.boughtId});

  final _i5.Key? key;

  final String? boughtId;

  @override
  String toString() {
    return 'BoughtInvoiceRouteArgs{key: $key, boughtId: $boughtId}';
  }
}
