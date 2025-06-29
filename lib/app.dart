import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_mvc/helpers/service_locator.dart';
import 'package:flutter_bloc_mvc/routes/app_router.dart';
import 'package:flutter_bloc_mvc/screens/auth/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // We build the bloc here instead of registering it globally in GetIt.
        BlocProvider(
          create: (_) => AuthenticationBloc(
            userRepository: getIt<UserRepository>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        title: 'FOD',
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        theme: ThemeData.light(),
      ),
    );
  }
}
