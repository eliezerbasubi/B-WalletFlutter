import 'package:bwalletflutter/components/token_selector.dart';
import 'package:bwalletflutter/theme/index.dart';
import 'package:bwalletflutter/utils/assets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(color: const Color(ColorCodes.primary), height: 320,),
              // Positioned.fill(child: Text("satoshi"))
             SafeArea(child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const TokenSelector(),

                      CircleAvatar(
                        backgroundColor: AppTheme.colors.black50.withOpacity(0.5),
                        child: const Icon(Icons.qr_code, color: Colors.white,),
                      ),
                   ],
                   ),

                   const SizedBox(height: Sizes.extraLarge + Sizes.base,),

                   Text("@satoshi", style: TextStyle(fontFamily: AppTheme.fonts.ibmBMPlexMono, color: Colors.white, fontSize: Sizes.medium)),

                   const SizedBox(height: Sizes.small,),
                   Text("US 8950234", style: TextStyle(fontFamily: AppTheme.fonts.ibmBMPlexMono, color: Colors.white, fontSize: Sizes.p20, fontWeight: FontWeight.bold)),

                    const SizedBox(height: Sizes.small,),

                    Container(
                      padding: const EdgeInsets.all(Sizes.base),
                      decoration: const BoxDecoration(
                        color: Color(ColorCodes.secondary),
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(Sizes.extraLarge), right: Radius.circular(Sizes.extraLarge)),
                      ),
                      child: const Text("0x84dkj495843453548309593234"),
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
                   boxShadow: [
                     BoxShadows.shadow
                   ],
                 ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 mainAxisSize: MainAxisSize.max,
                 children: [
                   const Text("Send", style: TextStyle(fontSize: Sizes.medium, fontWeight: FontWeight.w500,)),
                   Container(
                     padding: const EdgeInsets.symmetric(horizontal: Sizes.extraLarge),
                     decoration: const BoxDecoration(
                       border: Border.symmetric(vertical: BorderSide(width: 0.5, color: Colors.grey)),
                     ),
                     child: const Text("Receive", style: TextStyle(fontSize: Sizes.medium, fontWeight: FontWeight.w500,))),
                   const Text("Trade", style: TextStyle(fontSize: Sizes.medium, fontWeight: FontWeight.w500,)),
                 ],
               ),
             )),
            ],
          )
    ));
  }
}
