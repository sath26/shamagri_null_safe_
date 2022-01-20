//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import './blocs/auth/auth_bloc.dart';
import 'package:auto_route/annotations.dart';
// import 'package:auto_route/auto_route_annotations.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought/invoice.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought_bill.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/from_notification_invoice.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/profile.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/after_select/after_select.dart';
// import 'package:shamagri_latest_flutter_version/presentation/vendor/add/after_select/after_select_didnt_work_consumer.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/quotation.dart';
// import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/quotation_input_hook/unit_radio_select_hook.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/unit.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/quotation_add_edit/unit_search_edit_delete/add_edit_unit.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/select.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/add/selected_quotation_edit/selected_quotation_form.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold/invoice.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold_bill.dart';
import 'package:shamagri_latest_flutter_version/presentation/both/home.dart';
import '../splash/splash.dart';
import '../sign_in/sign_in_page.dart';
// import '../both/home.dart';

/* @MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: NotesOverviewPage),
    MaterialRoute(page: NoteFormPage, fullscreenDialog: true),
  ],
)
class $Router {} */
@MaterialAutoRouter(
  // generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: SelectBillScreen),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: AddEditQuotationScreen),
    MaterialRoute(page: ListEditDeleteUnit),
    MaterialRoute(page: AddEditMeasurementScreen),
    MaterialRoute(page: AfterSelect),
    MaterialRoute(page: SelectedQuotationForm),
    MaterialRoute(page: SoldInvoice),
    MaterialRoute(page: BoughtInvoice),
    MaterialRoute(page: SingleSoldBill),
    MaterialRoute(page: SingleBoughtBill),
    MaterialRoute(page: ProfilePage),
    MaterialRoute(page: FromNotificationBoughtBill),
    //FromNotificationBoughtBill
    // MaterialRoute(page: SingleBoughtBill),

    // MaterialRoute(page: UnitRadioSelectHook),
  ],
)
class $Router {}
