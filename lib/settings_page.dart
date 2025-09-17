import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:local_auth/local_auth.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart'; // ✅ NEW IMPORT
import 'dart:io';
import 'translations.dart';

// Global ValueNotifiers
ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
ValueNotifier<double> fontSizeNotifier = ValueNotifier<double>(16);
ValueNotifier<String> languageNotifier = ValueNotifier<String>("English");

// Translation helper
String t(String key) {
  return translations[languageNotifier.value]?[key] ?? key;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  // Load saved settings
  bool isDark = prefs.getBool('isDark') ?? false;
  double fontSize = prefs.getDouble('fontSize') ?? 16;
  String language = prefs.getString('language') ?? "English";

  themeNotifier.value = isDark ? ThemeMode.dark : ThemeMode.light;
  fontSizeNotifier.value = fontSize;
  languageNotifier.value = language;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, themeMode, __) {
        return ValueListenableBuilder<double>(
          valueListenable: fontSizeNotifier,
          builder: (_, fontSize, __) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Tourism App',
              theme: ThemeData.light().copyWith(
                textTheme: ThemeData.light()
                    .textTheme
                    .apply(fontSizeFactor: fontSize / 16),
              ),
              darkTheme: ThemeData.dark().copyWith(
                textTheme: ThemeData.dark()
                    .textTheme
                    .apply(fontSizeFactor: fontSize / 16),
              ),
              themeMode: themeMode,
              home: const SettingsPage(),
            );
          },
        );
      },
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDark = false;
  bool notifications = true;
  double fontSize = 16;
  String language = 'English';
  File? profileImage;
  final LocalAuthentication auth = LocalAuthentication();

  @override
  void initState() {
    super.initState();
    _loadPrefs();
  }

  Future<void> _loadPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isDark = prefs.getBool('isDark') ?? false;
      notifications = prefs.getBool('notifications') ?? true;
      fontSize = prefs.getDouble('fontSize') ?? 16;
      language = prefs.getString('language') ?? 'English';
    });

    themeNotifier.value = isDark ? ThemeMode.dark : ThemeMode.light;
    fontSizeNotifier.value = fontSize;
    languageNotifier.value = language;
  }

  Future<void> _savePrefs() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', isDark);
    await prefs.setBool('notifications', notifications);
    await prefs.setDouble('fontSize', fontSize);
    await prefs.setString('language', language);
  }

  Future<void> _pickProfileImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        profileImage = File(picked.path);
      });
    }
  }

  void _showLanguagePicker() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => Column(
        mainAxisSize: MainAxisSize.min,
        children: ['English', 'Hindi', 'Marathi', 'Tamil']
            .map((lang) => ListTile(
          title: Text(lang),
          onTap: () async {
            setState(() => language = lang);
            languageNotifier.value = lang; // live update
            final prefs = await SharedPreferences.getInstance();
            await prefs.setString('language', lang);
            Navigator.pop(ctx);
          },
        ))
            .toList(),
      ),
    );
  }

  void _showFeedbackDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Send Feedback"),
        content: const Text(
            "Email: support@yourcompany.com\nWe value your suggestions!"),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx), child: const Text("Close")),
        ],
      ),
    );
  }

  void _clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Cache cleared")));
  }

  void _rateUs() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.yourcompany.yourapp';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Could not open Play Store")));
    }
  }

  void _shareApp() {
    Share.share(
      'Check out My Tourism App! Download here: https://play.google.com/store/apps/details?id=com.yourcompany.yourapp',
      subject: 'My Tourism App',
    );
  }

  Future<void> _authenticate() async {
    bool canCheck = await auth.canCheckBiometrics;
    if (!canCheck) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Biometrics not available")));
      return;
    }
    bool authenticated = await auth.authenticate(
        localizedReason: "Unlock Settings with Biometrics");
    if (authenticated) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Authenticated!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return ValueListenableBuilder<String>(
      valueListenable: languageNotifier,
      builder: (context, langValue, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(t("settings")),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          body: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.purpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                accountName: Text(user?.displayName ?? 'Guest'),
                accountEmail: Text(user?.email ?? ''),
                currentAccountPicture: GestureDetector(
                  onTap: _pickProfileImage,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage:
                    profileImage != null ? FileImage(profileImage!) : null,
                    child: profileImage == null
                        ? const Icon(Icons.person,
                        size: 40, color: Colors.deepPurple)
                        : null,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: Text(t("edit_profile")),
                subtitle: Text(t("change_name_photo")),
                onTap: _pickProfileImage,
              ),
              ListTile(
                leading: const Icon(Icons.lock_outline),
                title: Text(t("change_password")),
                onTap: () async {
                  if (user != null && user.email != null) {
                    try {
                      await FirebaseAuth.instance
                          .sendPasswordResetEmail(email: user.email!);
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Password reset email sent.")));
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Error: ${e.toString()}")));
                    }
                  }
                },
              ),
              const Divider(),
              SwitchListTile(
                secondary: const Icon(Icons.brightness_6),
                title: Text(t("dark_mode")),
                value: isDark,
                onChanged: (v) {
                  setState(() => isDark = v);
                  _savePrefs();
                  themeNotifier.value = v ? ThemeMode.dark : ThemeMode.light;
                },
              ),
              ListTile(
                leading: const Icon(Icons.text_fields),
                title: Text(t("font_size")),
                subtitle: Slider(
                  min: 14,
                  max: 22,
                  divisions: 8,
                  label: "${fontSize.round()}",
                  value: fontSize,
                  onChanged: (v) {
                    setState(() => fontSize = v);
                    _savePrefs();
                    fontSizeNotifier.value = v;
                  },
                ),
              ),
              const Divider(),
              SwitchListTile(
                secondary: const Icon(Icons.notifications),
                title: Text(t("enable_notifications")),
                value: notifications,
                onChanged: (v) {
                  setState(() => notifications = v);
                  _savePrefs();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.language),
                title: Text(t("language")),
                subtitle: Text(languageNotifier.value),
                onTap: _showLanguagePicker,
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.cleaning_services),
                title: Text(t("clear_cache")),
                onTap: _clearCache,
              ),
              ListTile(
                leading: const Icon(Icons.shield),
                title: Text(t("app_lock")),
                onTap: _authenticate,
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: Text(t("about_app")),
                onTap: () => showAboutDialog(
                  context: context,
                  applicationName: "My Tourism App",
                  applicationVersion: "1.0.0",
                  applicationLegalese: "© 2025 YourCompany",
                ),
              ),
              ListTile(
                leading: const Icon(Icons.feedback_outlined),
                title: Text(t("send_feedback")),
                onTap: _showFeedbackDialog,
              ),
              ListTile(
                leading: const Icon(Icons.star_rate),
                title: Text(t("rate_us")),
                onTap: _rateUs,
              ),
              ListTile(
                leading: const Icon(Icons.share), // ✅ NEW OPTION
                title: Text(t("share_app")),
                onTap: _shareApp,
              ),
            ],
          ),
        );
      },
    );
  }
}
