import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_mvc/app.dart';
import 'package:flutter_bloc_mvc/firebase_options.dart';
import 'package:flutter_bloc_mvc/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  Bloc.observer=SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}
