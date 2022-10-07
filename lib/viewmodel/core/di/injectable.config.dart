// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../services/auth_services.dart' as _i3;
import '../../../services/cart_service.dart' as _i5;
import '../../../services/home_service.dart' as _i7;
import '../../../services/order_service.dart' as _i9;
import '../../bloc/account/account_bloc.dart' as _i14;
import '../../bloc/auth/sign_in/sign_in_bloc.dart' as _i11;
import '../../bloc/auth/sign_up/sign_up_bloc.dart' as _i12;
import '../../bloc/cart/cart_bloc.dart' as _i15;
import '../../bloc/home/home_bloc.dart' as _i16;
import '../../bloc/splash/splash_bloc.dart' as _i13;
import '../../repository/auth_repository.dart' as _i4;
import '../../repository/cart_repository.dart' as _i6;
import '../../repository/home_repository.dart' as _i8;
import '../../repository/order_service.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AuthService>(() => _i4.AuthRepository());
  gh.lazySingleton<_i5.CartService>(() => _i6.CartRepository());
  gh.lazySingleton<_i7.HomeService>(() => _i8.HomeRepository());
  gh.lazySingleton<_i9.OrderService>(() => _i10.OrderRepository());
  gh.factory<_i11.SignInBloc>(() => _i11.SignInBloc(get<_i3.AuthService>()));
  gh.factory<_i12.SignUpBloc>(() => _i12.SignUpBloc(get<_i3.AuthService>()));
  gh.factory<_i13.SplashBloc>(() => _i13.SplashBloc(get<_i3.AuthService>()));
  gh.factory<_i14.AccountBloc>(() => _i14.AccountBloc(
        get<_i3.AuthService>(),
        get<_i9.OrderService>(),
      ));
  gh.factory<_i15.CartBloc>(() => _i15.CartBloc(
        get<_i3.AuthService>(),
        get<_i5.CartService>(),
        get<_i9.OrderService>(),
      ));
  gh.factory<_i16.HomeBloc>(() => _i16.HomeBloc(get<_i7.HomeService>()));
  return get;
}
