import 'package:books_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setputServicelocator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRpoImplemention>(
    HomeRpoImplemention(apiService: getIt.get<ApiService>()),
  );
}
