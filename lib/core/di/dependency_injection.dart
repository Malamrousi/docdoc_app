import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/feature/login/data/repo/login_repo.dart';
import 'package:docdoc/feature/login/logic/login/login_cubit.dart';
import 'package:docdoc/feature/sign_up/data/repo/sign_up_repo.dart';
import 'package:docdoc/feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerFactory<LoginCubit>(()=> LoginCubit(getIt()));
  getIt.registerLazySingleton<LoginRepo>(()=> LoginRepo(getIt()));
  getIt.registerLazySingleton<SignUpRepo>(()=> SignUpRepo(getIt()));

  getIt.registerFactory<SignUpCubit>(()=> SignUpCubit(getIt()));
}
