import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:pet_finder/screens/login.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        // iconImageAssetPath: 'assets/air-hostess.png',
        // bubble: Image.asset('assets/splash.png'),
        title: Text(
          'Find',
        ),
        body: Text(
          'your lost pets or new four-legged companions',
        ),
        titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'assets/splash.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      // iconImageAssetPath: 'assets/splash.png',
      title: Text('Help'),
      body: Text(
        'other people find their pets',
      ),
      mainImage: Image.asset(
        'assets/splash.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      // iconImageAssetPath: 'assets/splash.png',
      title: Text('SomePage3'),
      body: Text(
        'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
      ),
      mainImage: Image.asset(
        'assets/splash.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).loginTitle),
        primary: false,
      ),
      body: IntroViewsFlutter(
        pages,
        onTapDoneButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocProvider(
                  create: (_) => LoginCubit(context.read<AuthenticationRepository>()),
                  child: LoginForm(),
                ),
              ),
            ), //MaterialPageRoute
          );
        },
        pageButtonTextStyles: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
