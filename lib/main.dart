import 'package:flutter/material.dart';
import 'package:practice_provider/provider/home_screen_provider.dart';
import 'package:practice_provider/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeScreenProvider(),
      child: const MaterialApp(
        home: MyHomeScreen(),
      ),
    );
  }
}
