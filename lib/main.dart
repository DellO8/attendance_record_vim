import 'package:attendance_list_v/onboard_screen.dart';
import 'package:attendance_list_v/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHomes = prefs.getBool('showHomee') ?? false;

  runApp(MyApp(showHomes: showHomes));
}

class MyApp extends StatelessWidget {
  final bool showHomes;

  const MyApp({Key? key, required this.showHomes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showHomes ? const HomePage() : const OnboardingScreen(),
    );
  }
}


