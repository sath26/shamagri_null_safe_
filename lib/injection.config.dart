// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i3;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i9;
import 'application/bought_sold/list_bought/list_bought_bloc.dart' as _i5;
import 'application/bought_sold/list_bought_invoice/list_bought_invoice_bloc.dart'
    as _i7;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/bought/i_bought_repository.dart' as _i8;
import 'domain/list_bought/i_list_bought_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i5.ListBoughtBloc>(
      () => _i5.ListBoughtBloc(get<_i6.IListBoughtRepository>()));
  gh.factory<_i7.ListBoughtInvoiceBloc>(
      () => _i7.ListBoughtInvoiceBloc(get<_i8.IBoughtRepository>()));
  gh.factory<_i9.SignInFormBloc>(
      () => _i9.SignInFormBloc(get<_i4.IAuthFacade>()));
  return get;
}
