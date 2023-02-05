import 'package:e_commerce_clothing/login/login.dart';
import 'package:e_commerce_clothing/login/singUp.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';
import 'login/singUp.dart';

void main() {
  runApp(const ClothesStoreApp());
}

class ClothesStoreApp extends StatelessWidget {
  const ClothesStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce Clothes Store',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffffffff),
      ),
      home: SignPage(),
    );
  }
}
