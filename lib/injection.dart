import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:templateflutter/config/config.dart'; 
import 'package:templateflutter/core/network/network_info.dart';
import 'package:templateflutter/core/util/dio_logging_interceptor.dart';
import 'package:get_it/get_it.dart';
final sl = GetIt.instance;

Future<void> init() async {
  
  /**
   * ! Core
   */
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /**
   * ! External
   */
  sl.registerLazySingleton(() {
    final dio = Dio();
    dio.options.baseUrl = FlavorConfig.instance.values.baseUrl;
    dio.interceptors.add(DioLoggingInterceptor());
    return dio;
  });
  sl.registerLazySingleton(() => Constant());
  sl.registerLazySingleton(() => DataConnectionChecker());
}