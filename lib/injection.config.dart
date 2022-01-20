// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i38;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i37;
import 'application/bought_sold/from_noftification/from_notification_bloc.dart'
    as _i33;
import 'application/bought_sold/list_bought/list_bought_bloc.dart' as _i20;
import 'application/bought_sold/list_bought_invoice/list_bought_invoice_bloc.dart'
    as _i21;
import 'application/bought_sold/list_sold/list_sold_bloc.dart' as _i22;
import 'application/bought_sold/list_sold_invoice/list_sold_invoice_bloc.dart'
    as _i23;
import 'application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart'
    as _i27;
import 'application/bought_sold/single_bought_invoice_from_list/single_bought_invoice_watcher_bloc.dart'
    as _i28;
import 'application/bought_sold/single_invoice_from_list/single_invoice_watcher_bloc.dart'
    as _i29;
import 'application/profile/profile_bloc.dart' as _i24;
import 'application/quotation_reso/quotation_bloc.dart' as _i25;
import 'application/quotation_reso/quotation_watcher/quotation_watcher_bloc.dart'
    as _i26;
import 'application/unit_reso.dart/bloc/unit_watcher_bloc.dart' as _i32;
import 'application/unit_reso.dart/unit_actor/unit_actor_bloc.dart' as _i30;
import 'application/unit_reso.dart/unit_bloc.dart' as _i31;
import 'domain/auth/i_auth_facade.dart' as _i34;
import 'domain/bought/i_bought_repository.dart' as _i6;
import 'domain/list_bought/i_list_bought_repository.dart' as _i8;
import 'domain/list_sold/i_list_sold_repository.dart' as _i10;
import 'domain/quotation_reso/i_quotation_repository.dart' as _i12;
import 'domain/sold/i_sold_repository.dart' as _i14;
import 'domain/unit_reso/i_unit_repository.dart' as _i16;
import 'domain/user_reso/i_user_repository.dart' as _i18;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i35;
import 'infrastructure/auth/firebase_auth_mapper.dart' as _i36;
import 'infrastructure/bought_reso/bought_repository.dart' as _i7;
import 'infrastructure/bought_reso/list_bought/list_bought_repository.dart'
    as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i39;
import 'infrastructure/quotation_reso/quotation_repository.dart' as _i13;
import 'infrastructure/sold_reso/list_sold/list_sold_repository.dart' as _i11;
import 'infrastructure/sold_reso/sold_repository.dart' as _i15;
import 'infrastructure/unit_reso/unit_repository.dart' as _i17;
import 'infrastructure/user/user_repository.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IBoughtRepository>(
      () => _i7.BoughtRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IListBoughtRepository>(
      () => _i9.BoughtRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IListSoldRepository>(
      () => _i11.ListSoldRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IQuotationRepository>(
      () => _i13.QuotationRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.ISoldRepository>(
      () => _i15.SoldRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i16.IUnitRepository>(
      () => _i17.UnitRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i18.IUserRepository>(
      () => _i19.UserRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i20.ListBoughtBloc>(
      () => _i20.ListBoughtBloc(get<_i8.IListBoughtRepository>()));
  gh.factory<_i21.ListBoughtInvoiceBloc>(
      () => _i21.ListBoughtInvoiceBloc(get<_i6.IBoughtRepository>()));
  gh.factory<_i22.ListSoldBloc>(
      () => _i22.ListSoldBloc(get<_i10.IListSoldRepository>()));
  gh.factory<_i23.ListSoldInvoiceBloc>(
      () => _i23.ListSoldInvoiceBloc(get<_i14.ISoldRepository>()));
  gh.factory<_i24.ProfileBloc>(
      () => _i24.ProfileBloc(get<_i18.IUserRepository>()));
  gh.factory<_i25.QuotationBloc>(
      () => _i25.QuotationBloc(get<_i12.IQuotationRepository>()));
  gh.factory<_i26.QuotationWatcherBloc>(
      () => _i26.QuotationWatcherBloc(get<_i12.IQuotationRepository>()));
  gh.factory<_i27.SelectedWatcherBloc>(
      () => _i27.SelectedWatcherBloc(get<_i14.ISoldRepository>()));
  gh.factory<_i28.SingleBoughtInvoiceWatcherBloc>(
      () => _i28.SingleBoughtInvoiceWatcherBloc(get<_i6.IBoughtRepository>()));
  gh.factory<_i29.SingleInvoiceWatcherBloc>(
      () => _i29.SingleInvoiceWatcherBloc(get<_i14.ISoldRepository>()));
  gh.factory<_i30.UnitActorBloc>(
      () => _i30.UnitActorBloc(get<_i16.IUnitRepository>()));
  gh.factory<_i31.UnitBloc>(() => _i31.UnitBloc(get<_i16.IUnitRepository>()));
  gh.factory<_i32.UnitWatcherBloc>(
      () => _i32.UnitWatcherBloc(get<_i16.IUnitRepository>()));
  gh.factory<_i33.FromNotificationBloc>(
      () => _i33.FromNotificationBloc(get<_i6.IBoughtRepository>()));
  gh.lazySingleton<_i34.IAuthFacade>(
      () => _i35.FirebaseAuthFacade(get<_i3.FirebaseAuth>(),
          get<_i5.GoogleSignIn>(), get<_i18.IUserRepository>()),
      instanceName: 'impl1');
  gh.lazySingleton<_i34.IAuthFacade>(() => _i36.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i5.GoogleSignIn>(),
      get<_i18.IUserRepository>()));
  gh.factory<_i37.SignInFormBloc>(
      () => _i37.SignInFormBloc(get<_i34.IAuthFacade>()));
  gh.factory<_i38.AuthBloc>(() => _i38.AuthBloc(get<_i34.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i39.FirebaseInjectableModule {}
