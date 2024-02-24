import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sutasapp/screens/dashboard/dashboard_screen.dart';
import 'package:sutasapp/screens/login_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        fontFamily: 'Product',
      ),
      home: LoginPage(),
    );
  }
}
