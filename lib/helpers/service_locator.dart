import 'package:get_it/get_it.dart';
import 'package:pizza_repository/pizza_repository.dart';
import 'package:user_repository/user_repository.dart';

// Auth feature

final getIt = GetIt.instance;

Future<void> initLocator() async {
  getIt.registerLazySingleton<UserRepository>(() => FirebaseUserRepo());
  getIt.registerLazySingleton<PizzaRepository>(() => FirebasePizzaRepo());
}
