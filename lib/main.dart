import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'login_page.dart';
import 'state_page.dart';
import 'settings_page.dart';
import 'translations.dart';

// --------- Global Notifiers ---------
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
final ValueNotifier<double> fontSizeNotifier = ValueNotifier(16);
final ValueNotifier<String> languageNotifier = ValueNotifier("English");

// translation helper
String t(String key) => translations[languageNotifier.value]?[key] ?? key;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // load saved prefs
  final prefs = await SharedPreferences.getInstance();
  themeNotifier.value =
  (prefs.getBool('isDark') ?? false) ? ThemeMode.dark : ThemeMode.light;
  fontSizeNotifier.value = prefs.getDouble('fontSize') ?? 16;
  languageNotifier.value = prefs.getString('language') ?? "English";

  runApp(MyTourismApp());   // ❌ const हटाया
}

class MyTourismApp extends StatelessWidget {
  // ❌ const हटाया
  MyTourismApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, currentTheme, __) {
        return ValueListenableBuilder<double>(
          valueListenable: fontSizeNotifier,
          builder: (_, fontSize, __) {
            return ValueListenableBuilder<String>(
              valueListenable: languageNotifier,
              builder: (_, lang, __) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'My Tourism App',
                  themeMode: currentTheme,

                  // ✅ Material 3 theme
                  theme: ThemeData(
                    useMaterial3: true,
                    colorScheme:
                    ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    textTheme: ThemeData.light()
                        .textTheme
                        .apply(fontSizeFactor: fontSize / 16),
                  ),
                  darkTheme: ThemeData(
                    useMaterial3: true,
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.deepPurple,
                      brightness: Brightness.dark,
                    ),
                    textTheme: ThemeData.dark()
                        .textTheme
                        .apply(fontSizeFactor: fontSize / 16),
                  ),

                  home: AuthCheck(),   // ❌ const हटाया
                );
              },
            );
          },
        );
      },
    );
  }
}

/// Checks FirebaseAuth login status and routes to proper screen
class AuthCheck extends StatelessWidget {
  // ❌ const हटाया
  AuthCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (snapshot.hasData) {
          return StatePage();   // ❌ const हटाया
        }
        return LoginPage();      // ❌ const हटाया
      },
    );
  }
}
