import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_mvc/helpers/service_locator.dart';
import 'package:flutter_bloc_mvc/simple_bloc_observer.dart';
import 'app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initLocator();

  Bloc.observer = SimpleBlocObserver();

  runApp(const MyApp());
}
