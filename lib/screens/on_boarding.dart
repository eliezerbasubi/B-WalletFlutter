import 'package:bwalletflutter/theme/index.dart';
import 'package:bwalletflutter/utils/assets.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(AssetsImage.wallet),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: Text(
                      "Secure your coins and NFTs with ease.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                          height: 1.4),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Buy, Sell, Earn digital assets and easily secure your funds.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white,
                          height: 1.4),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "home");
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Let's get started",
                            style: TextStyle(
                                color: Color(ColorCodes.primary),
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          CircleAvatar(
                            backgroundColor: Color(ColorCodes.tertiary),
                            child: Icon(
                              Icons.arrow_right_alt,
                              size: 24.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: AppTheme.colors.secondary,
                        minimumSize: const Size.fromHeight(55),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)))),
                  ),

                  // const SizedBox(height: 5,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
