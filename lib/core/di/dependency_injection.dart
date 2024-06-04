import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_service.dart';
import 'package:doc_doc/core/networking/dio_factory.dart';
import 'package:doc_doc/features/login/data/repos/login_repo.dart';
import 'package:doc_doc/features/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
