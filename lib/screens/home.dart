import 'package:bwalletflutter/components/home_hero_details.dart';
import 'package:bwalletflutter/components/home_tokens_details.dart';
import 'package:bwalletflutter/components/token_selector.dart';
import 'package:bwalletflutter/theme/index.dart';
import 'package:bwalletflutter/utils/assets.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: const [
          HomeHeroDetails(),
          SizedBox(height: Sizes.extraLarge * 2,),
          Expanded(child: HomeTokensDetails()),
        ],
      ),
    );
  }
}
