import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:altyn_login/core/client/network_info.dart';
import 'package:altyn_login/core/client/rest_client.dart';

import 'package:altyn_login/core/services/TokenStorage/token_storage.dart';
import 'package:altyn_login/core/services/TokenStorage/token_storage_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

///Объявление переменной для доступа к di
final GetIt di = GetIt.instance;

/// Инициализация di
Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  di.registerLazySingleton(() => sharedPreferences);
  di.registerLazySingleton(() => Connectivity());
  di.registerLazySingleton(() => Dio());

  di.registerLazySingleton(() => RestClientService(di<Dio>()));

  di.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(connectivity: di<Connectivity>()),
  );
  di.registerLazySingleton<TokenStorage>(() => TokenStorageImpl());
}
