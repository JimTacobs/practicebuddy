import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'ui/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: PracticeBuddy()));
}

class PracticeBuddy extends StatelessWidget {
  const PracticeBuddy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      /// https://pub.dev/packages/flex_color_scheme/example
      theme: FlexThemeData.light(
        scheme: FlexScheme.deepBlue,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 57),
          headline2: TextStyle(fontSize: 45),
          headline3: TextStyle(fontSize: 36),
          overline: TextStyle(fontSize: 11, letterSpacing: 0.5),
        ),
        surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
        transparentStatusBar: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is not signed in - show a sign-in screen
        if (!snapshot.hasData) {
          return SignInScreen(
            providerConfigs: [
              const EmailProviderConfiguration(),
              GoogleProviderConfiguration(
                  clientId: Platform.isIOS
                      ? '935405807940-rou5meaho78184ost9cof4pl9qlvfi5d.apps.googleusercontent.com'
                      : '935405807940-uv08nqi1mr3tj1hibqkg82c45rkikvvd.apps.googleusercontent.com'),
            ],
          );
        }

        return const HomeScreen();
      },
    );
  }
}
