import 'package:flutter/material.dart';
import 'package:proyek_flutter/home.dart';
import 'package:proyek_flutter/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyTelkomsel Clone",
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      // Halaman pertama yang ditampilkan
      home: const LoginPage(),
      // Rute untuk pindah halaman
      routes: {
        '/payment': (context) => const HomePage(),
      },
    );
  }
}
