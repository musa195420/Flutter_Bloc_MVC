import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_mvc/helpers/service_locator.dart';
import 'package:flutter_bloc_mvc/screens/auth/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:flutter_bloc_mvc/extenshions/themes.dart';
import 'package:flutter_bloc_mvc/screens/auth/blocs/sign_in/sign_in_bloc.dart';
import 'package:flutter_bloc_mvc/screens/auth/views/welcome_screen.dart';
import 'package:flutter_bloc_mvc/screens/home/blocs/get_pizza_bloc/get_pizza_bloc.dart';
import 'package:flutter_bloc_mvc/screens/home/views/home_screen.dart';
import 'package:pizza_repository/pizza_repository.dart';
import 'package:user_repository/user_repository.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Pizza App",
      debugShowCheckedModeBanner: false,
      theme: pizzaTheme,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => SignInBloc(getIt<UserRepository>()),
                ),
                BlocProvider(
                  create: (_) =>
                      GetPizzaBloc(getIt<PizzaRepository>())..add(GetPizza()),
                ),
              ],
              child: const HomeScreen(),
            );
          } else {
            return const WelcomeScreen();
          }
        },
      ),
    );
  }
}
