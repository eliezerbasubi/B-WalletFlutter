import 'package:bwalletflutter/routes/index.dart';
import 'package:bwalletflutter/theme/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.define(),
      initialRoute: "/",
      routes: routes,
    );
  }
}

