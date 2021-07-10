import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter/rendering.dart'; // !debugLines
import 'package:flutter/widgets.dart';
import 'package:pet_finder/app.dart';
import 'package:pet_finder/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  EquatableConfig.stringify = kDebugMode;
  Bloc.observer = SimpleBlocObserver();
  // debugPaintSizeEnabled = true; // !debugLines
  runApp(App(authenticationRepository: AuthenticationRepository()));
}
