import 'package:bwalletflutter/screens/home.dart';
import 'package:bwalletflutter/screens/on_boarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/": (context) => const Onboarding(),
  "home": (context) => const Home(),
};
