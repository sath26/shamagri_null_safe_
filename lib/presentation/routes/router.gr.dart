// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../../domain/not_form_bought/not_form_bought.dart' as _i22;
import '../../domain/quotation_reso/quotation.dart' as _i19;
import '../../domain/sold/sold.dart' as _i18;
import '../../domain/sold_not_form/sold_not_form.dart' as _i21;
import '../../domain/unit_reso/measuremnt.dart' as _i20;
import '../both/home.dart' as _i2;
import '../customer/bought/invoice.dart' as _i11;
import '../customer/bought_bill.dart' as _i13;
import '../customer/from_notification_invoice.dart' as _i15;
import '../profile/profile.dart' as _i14;
import '../sign_in/sign_in_page.dart' as _i4;
import '../splash/splash.dart' as _i1;
import '../vendor/add/after_select/after_select.dart' as _i8;
import '../vendor/add/quotation_add_edit/quotation.dart' as _i5;
import '../vendor/add/quotation_add_edit/unit.dart' as _i6;
import '../vendor/add/quotation_add_edit/unit_search_edit_delete/add_edit_unit.dart'
    as _i7;
import '../vendor/add/select.dart' as _i3;
import '../vendor/add/selected_quotation_edit/selected_quotation_form.dart'
    as _i9;
import '../vendor/sold/invoice.dart' as _i10;
import '../vendor/sold_bill.dart' as _i12;

class Router extends _i16.RootStackRouter {
  Router([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    HomeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<HomeScreenRouteArgs>(
          orElse: () => const HomeScreenRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i2.HomeScreen(key: args.key, selectedPage: args.selectedPage));
    },
    SelectBillScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SelectBillScreenRouteArgs>(
          orElse: () => const SelectBillScreenRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.SelectBillScreen(
              key: args.key,
              afterSelectSoldOption: args.afterSelectSoldOption));
    },
    SignInPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.SignInPage());
    },
    AddEditQuotationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AddEditQuotationScreenRouteArgs>(
          orElse: () => const AddEditQuotationScreenRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.AddEditQuotationScreen(
              key: args.key,
              isEditing: args.isEditing,
              quotation: args.quotation));
    },
    ListEditDeleteUnitRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ListEditDeleteUnit());
    },
    AddEditMeasurementScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AddEditMeasurementScreenRouteArgs>(
          orElse: () => const AddEditMeasurementScreenRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.AddEditMeasurementScreen(
              key: args.key,
              measuremnt: args.measuremnt,
              isEditing: args.isEditing));
    },
    AfterSelectRoute.name: (routeData) {
      final args = routeData.argsAs<AfterSelectRouteArgs>(
          orElse: () => const AfterSelectRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.AfterSelect(
              key: args.key,
              afterSelectSoldOption: args.afterSelectSoldOption));
    },
    SelectedQuotationFormRoute.name: (routeData) {
      final args = routeData.argsAs<SelectedQuotationFormRouteArgs>(
          orElse: () => const SelectedQuotationFormRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.SelectedQuotationForm(
              key: args.key,
              isEditing: args.isEditing,
              bill: args.bill,
              quotationIndex: args.quotationIndex));
    },
    SoldInvoiceRoute.name: (routeData) {
      final args = routeData.argsAs<SoldInvoiceRouteArgs>(
          orElse: () => const SoldInvoiceRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.SoldInvoice(key: args.key, soldId: args.soldId));
    },
    BoughtInvoiceRoute.name: (routeData) {
      final args = routeData.argsAs<BoughtInvoiceRouteArgs>(
          orElse: () => const BoughtInvoiceRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.BoughtInvoice(key: args.key, boughtId: args.boughtId));
    },
    SingleSoldBillRoute.name: (routeData) {
      final args = routeData.argsAs<SingleSoldBillRouteArgs>(
          orElse: () => const SingleSoldBillRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.SingleSoldBill(
              key: args.key, soldBillSoldOption: args.soldBillSoldOption));
    },
    SingleBoughtBillRoute.name: (routeData) {
      final args = routeData.argsAs<SingleBoughtBillRouteArgs>(
          orElse: () => const SingleBoughtBillRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.SingleBoughtBill(
              key: args.key,
              boughtBillBoughtOption: args.boughtBillBoughtOption));
    },
    ProfilePageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i14.ProfilePage());
    },
    FromNotificationBoughtBillRoute.name: (routeData) {
      final args = routeData.argsAs<FromNotificationBoughtBillRouteArgs>(
          orElse: () => const FromNotificationBoughtBillRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i15.FromNotificationBoughtBill(
              key: args.key,
              soldAndboughtId: args.soldAndboughtId,
              soldInvoiceAndBoughtInvoiceId:
                  args.soldInvoiceAndBoughtInvoiceId));
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i16.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i16.RouteConfig(SelectBillScreenRoute.name,
            path: '/select-bill-screen'),
        _i16.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i16.RouteConfig(AddEditQuotationScreenRoute.name,
            path: '/add-edit-quotation-screen'),
        _i16.RouteConfig(ListEditDeleteUnitRoute.name,
            path: '/list-edit-delete-unit'),
        _i16.RouteConfig(AddEditMeasurementScreenRoute.name,
            path: '/add-edit-measurement-screen'),
        _i16.RouteConfig(AfterSelectRoute.name, path: '/after-select'),
        _i16.RouteConfig(SelectedQuotationFormRoute.name,
            path: '/selected-quotation-form'),
        _i16.RouteConfig(SoldInvoiceRoute.name, path: '/sold-invoice'),
        _i16.RouteConfig(BoughtInvoiceRoute.name, path: '/bought-invoice'),
        _i16.RouteConfig(SingleSoldBillRoute.name, path: '/single-sold-bill'),
        _i16.RouteConfig(SingleBoughtBillRoute.name,
            path: '/single-bought-bill'),
        _i16.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i16.RouteConfig(FromNotificationBoughtBillRoute.name,
            path: '/from-notification-bought-bill')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i16.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i16.PageRouteInfo<HomeScreenRouteArgs> {
  HomeScreenRoute({_i17.Key? key, int? selectedPage})
      : super(HomeScreenRoute.name,
            path: '/home-screen',
            args: HomeScreenRouteArgs(key: key, selectedPage: selectedPage));

  static const String name = 'HomeScreenRoute';
}

class HomeScreenRouteArgs {
  const HomeScreenRouteArgs({this.key, this.selectedPage});

  final _i17.Key? key;

  final int? selectedPage;

  @override
  String toString() {
    return 'HomeScreenRouteArgs{key: $key, selectedPage: $selectedPage}';
  }
}

/// generated route for
/// [_i3.SelectBillScreen]
class SelectBillScreenRoute
    extends _i16.PageRouteInfo<SelectBillScreenRouteArgs> {
  SelectBillScreenRoute({_i17.Key? key, _i18.Sold? afterSelectSoldOption})
      : super(SelectBillScreenRoute.name,
            path: '/select-bill-screen',
            args: SelectBillScreenRouteArgs(
                key: key, afterSelectSoldOption: afterSelectSoldOption));

  static const String name = 'SelectBillScreenRoute';
}

class SelectBillScreenRouteArgs {
  const SelectBillScreenRouteArgs({this.key, this.afterSelectSoldOption});

  final _i17.Key? key;

  final _i18.Sold? afterSelectSoldOption;

  @override
  String toString() {
    return 'SelectBillScreenRouteArgs{key: $key, afterSelectSoldOption: $afterSelectSoldOption}';
  }
}

/// generated route for
/// [_i4.SignInPage]
class SignInPageRoute extends _i16.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i5.AddEditQuotationScreen]
class AddEditQuotationScreenRoute
    extends _i16.PageRouteInfo<AddEditQuotationScreenRouteArgs> {
  AddEditQuotationScreenRoute(
      {_i17.Key? key, bool? isEditing, _i19.Quotation? quotation})
      : super(AddEditQuotationScreenRoute.name,
            path: '/add-edit-quotation-screen',
            args: AddEditQuotationScreenRouteArgs(
                key: key, isEditing: isEditing, quotation: quotation));

  static const String name = 'AddEditQuotationScreenRoute';
}

class AddEditQuotationScreenRouteArgs {
  const AddEditQuotationScreenRouteArgs(
      {this.key, this.isEditing, this.quotation});

  final _i17.Key? key;

  final bool? isEditing;

  final _i19.Quotation? quotation;

  @override
  String toString() {
    return 'AddEditQuotationScreenRouteArgs{key: $key, isEditing: $isEditing, quotation: $quotation}';
  }
}

/// generated route for
/// [_i6.ListEditDeleteUnit]
class ListEditDeleteUnitRoute extends _i16.PageRouteInfo<void> {
  const ListEditDeleteUnitRoute()
      : super(ListEditDeleteUnitRoute.name, path: '/list-edit-delete-unit');

  static const String name = 'ListEditDeleteUnitRoute';
}

/// generated route for
/// [_i7.AddEditMeasurementScreen]
class AddEditMeasurementScreenRoute
    extends _i16.PageRouteInfo<AddEditMeasurementScreenRouteArgs> {
  AddEditMeasurementScreenRoute(
      {_i17.Key? key, _i20.Measuremnt? measuremnt, bool? isEditing})
      : super(AddEditMeasurementScreenRoute.name,
            path: '/add-edit-measurement-screen',
            args: AddEditMeasurementScreenRouteArgs(
                key: key, measuremnt: measuremnt, isEditing: isEditing));

  static const String name = 'AddEditMeasurementScreenRoute';
}

class AddEditMeasurementScreenRouteArgs {
  const AddEditMeasurementScreenRouteArgs(
      {this.key, this.measuremnt, this.isEditing});

  final _i17.Key? key;

  final _i20.Measuremnt? measuremnt;

  final bool? isEditing;

  @override
  String toString() {
    return 'AddEditMeasurementScreenRouteArgs{key: $key, measuremnt: $measuremnt, isEditing: $isEditing}';
  }
}

/// generated route for
/// [_i8.AfterSelect]
class AfterSelectRoute extends _i16.PageRouteInfo<AfterSelectRouteArgs> {
  AfterSelectRoute({_i17.Key? key, _i18.Sold? afterSelectSoldOption})
      : super(AfterSelectRoute.name,
            path: '/after-select',
            args: AfterSelectRouteArgs(
                key: key, afterSelectSoldOption: afterSelectSoldOption));

  static const String name = 'AfterSelectRoute';
}

class AfterSelectRouteArgs {
  const AfterSelectRouteArgs({this.key, this.afterSelectSoldOption});

  final _i17.Key? key;

  final _i18.Sold? afterSelectSoldOption;

  @override
  String toString() {
    return 'AfterSelectRouteArgs{key: $key, afterSelectSoldOption: $afterSelectSoldOption}';
  }
}

/// generated route for
/// [_i9.SelectedQuotationForm]
class SelectedQuotationFormRoute
    extends _i16.PageRouteInfo<SelectedQuotationFormRouteArgs> {
  SelectedQuotationFormRoute(
      {_i17.Key? key, bool? isEditing, _i18.Sold? bill, int? quotationIndex})
      : super(SelectedQuotationFormRoute.name,
            path: '/selected-quotation-form',
            args: SelectedQuotationFormRouteArgs(
                key: key,
                isEditing: isEditing,
                bill: bill,
                quotationIndex: quotationIndex));

  static const String name = 'SelectedQuotationFormRoute';
}

class SelectedQuotationFormRouteArgs {
  const SelectedQuotationFormRouteArgs(
      {this.key, this.isEditing, this.bill, this.quotationIndex});

  final _i17.Key? key;

  final bool? isEditing;

  final _i18.Sold? bill;

  final int? quotationIndex;

  @override
  String toString() {
    return 'SelectedQuotationFormRouteArgs{key: $key, isEditing: $isEditing, bill: $bill, quotationIndex: $quotationIndex}';
  }
}

/// generated route for
/// [_i10.SoldInvoice]
class SoldInvoiceRoute extends _i16.PageRouteInfo<SoldInvoiceRouteArgs> {
  SoldInvoiceRoute({_i17.Key? key, String? soldId})
      : super(SoldInvoiceRoute.name,
            path: '/sold-invoice',
            args: SoldInvoiceRouteArgs(key: key, soldId: soldId));

  static const String name = 'SoldInvoiceRoute';
}

class SoldInvoiceRouteArgs {
  const SoldInvoiceRouteArgs({this.key, this.soldId});

  final _i17.Key? key;

  final String? soldId;

  @override
  String toString() {
    return 'SoldInvoiceRouteArgs{key: $key, soldId: $soldId}';
  }
}

/// generated route for
/// [_i11.BoughtInvoice]
class BoughtInvoiceRoute extends _i16.PageRouteInfo<BoughtInvoiceRouteArgs> {
  BoughtInvoiceRoute({_i17.Key? key, String? boughtId})
      : super(BoughtInvoiceRoute.name,
            path: '/bought-invoice',
            args: BoughtInvoiceRouteArgs(key: key, boughtId: boughtId));

  static const String name = 'BoughtInvoiceRoute';
}

class BoughtInvoiceRouteArgs {
  const BoughtInvoiceRouteArgs({this.key, this.boughtId});

  final _i17.Key? key;

  final String? boughtId;

  @override
  String toString() {
    return 'BoughtInvoiceRouteArgs{key: $key, boughtId: $boughtId}';
  }
}

/// generated route for
/// [_i12.SingleSoldBill]
class SingleSoldBillRoute extends _i16.PageRouteInfo<SingleSoldBillRouteArgs> {
  SingleSoldBillRoute({_i17.Key? key, _i21.SoldNotForm? soldBillSoldOption})
      : super(SingleSoldBillRoute.name,
            path: '/single-sold-bill',
            args: SingleSoldBillRouteArgs(
                key: key, soldBillSoldOption: soldBillSoldOption));

  static const String name = 'SingleSoldBillRoute';
}

class SingleSoldBillRouteArgs {
  const SingleSoldBillRouteArgs({this.key, this.soldBillSoldOption});

  final _i17.Key? key;

  final _i21.SoldNotForm? soldBillSoldOption;

  @override
  String toString() {
    return 'SingleSoldBillRouteArgs{key: $key, soldBillSoldOption: $soldBillSoldOption}';
  }
}

/// generated route for
/// [_i13.SingleBoughtBill]
class SingleBoughtBillRoute
    extends _i16.PageRouteInfo<SingleBoughtBillRouteArgs> {
  SingleBoughtBillRoute(
      {_i17.Key? key, _i22.BoughtNotForm? boughtBillBoughtOption})
      : super(SingleBoughtBillRoute.name,
            path: '/single-bought-bill',
            args: SingleBoughtBillRouteArgs(
                key: key, boughtBillBoughtOption: boughtBillBoughtOption));

  static const String name = 'SingleBoughtBillRoute';
}

class SingleBoughtBillRouteArgs {
  const SingleBoughtBillRouteArgs({this.key, this.boughtBillBoughtOption});

  final _i17.Key? key;

  final _i22.BoughtNotForm? boughtBillBoughtOption;

  @override
  String toString() {
    return 'SingleBoughtBillRouteArgs{key: $key, boughtBillBoughtOption: $boughtBillBoughtOption}';
  }
}

/// generated route for
/// [_i14.ProfilePage]
class ProfilePageRoute extends _i16.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i15.FromNotificationBoughtBill]
class FromNotificationBoughtBillRoute
    extends _i16.PageRouteInfo<FromNotificationBoughtBillRouteArgs> {
  FromNotificationBoughtBillRoute(
      {_i17.Key? key,
      String? soldAndboughtId,
      String? soldInvoiceAndBoughtInvoiceId})
      : super(FromNotificationBoughtBillRoute.name,
            path: '/from-notification-bought-bill',
            args: FromNotificationBoughtBillRouteArgs(
                key: key,
                soldAndboughtId: soldAndboughtId,
                soldInvoiceAndBoughtInvoiceId: soldInvoiceAndBoughtInvoiceId));

  static const String name = 'FromNotificationBoughtBillRoute';
}

class FromNotificationBoughtBillRouteArgs {
  const FromNotificationBoughtBillRouteArgs(
      {this.key, this.soldAndboughtId, this.soldInvoiceAndBoughtInvoiceId});

  final _i17.Key? key;

  final String? soldAndboughtId;

  final String? soldInvoiceAndBoughtInvoiceId;

  @override
  String toString() {
    return 'FromNotificationBoughtBillRouteArgs{key: $key, soldAndboughtId: $soldAndboughtId, soldInvoiceAndBoughtInvoiceId: $soldInvoiceAndBoughtInvoiceId}';
  }
}
