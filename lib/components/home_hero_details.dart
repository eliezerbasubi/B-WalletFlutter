import 'package:bwalletflutter/components/token_selector.dart';
import 'package:bwalletflutter/theme/index.dart';
import 'package:bwalletflutter/utils/assets.dart';
import 'package:bwalletflutter/utils/data.dart';
import 'package:bwalletflutter/utils/helpers.dart';
import 'package:flutter/material.dart';

class HomeHeroDetails extends StatelessWidget {
  const HomeHeroDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: const Color(ColorCodes.primary),
          height: 320,
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TokenSelector(),
                  CircleAvatar(
                    backgroundColor: AppTheme.colors.black50.withOpacity(0.5),
                    child: const Icon(
                      Icons.qr_code,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Sizes.extraLarge + Sizes.base,
              ),
              Text(CURRENT_USER["username"],
                  style: TextStyle(
                      fontFamily: AppTheme.fonts.ibmBMPlexMono,
                      color: Colors.white,
                      fontSize: Sizes.medium)),
              const SizedBox(
                height: Sizes.small,
              ),
              Text("US ${convertTokenToDollars(CURRENT_USER["amount"], CURRENT_USER["token"])}",
                  style: TextStyle(
                      fontFamily: AppTheme.fonts.ibmBMPlexMono,
                      color: Colors.white,
                      fontSize: Sizes.p20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: Sizes.small,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.medium, vertical: Sizes.base),
                decoration: const BoxDecoration(
                  color: Color(ColorCodes.secondary),
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(Sizes.extraLarge),
                      right: Radius.circular(Sizes.extraLarge)),
                ),
                child: Text(truncate(CURRENT_USER["address"])),
              )
            ],
          ),
        )),

        Positioned(
            bottom: -30,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: Sizes.p20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(Sizes.base)),
                boxShadow: [BoxShadows.shadow],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("Send",
                      style: TextStyle(
                        fontSize: Sizes.medium,
                        fontWeight: FontWeight.w500,
                      )),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Sizes.extraLarge),
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                            vertical:
                                BorderSide(width: 0.5, color: Colors.grey)),
                      ),
                      child: const Text("Receive",
                          style: TextStyle(
                            fontSize: Sizes.medium,
                            fontWeight: FontWeight.w500,
                          ))),
                  const Text("Trade",
                      style: TextStyle(
                        fontSize: Sizes.medium,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            )),
      ],
    );
  }
}
