import 'package:bwalletflutter/components/token_image.dart';
import 'package:bwalletflutter/theme/index.dart';
import 'package:bwalletflutter/utils/assets.dart';
import 'package:bwalletflutter/utils/data.dart';
import 'package:bwalletflutter/utils/helpers.dart';
import 'package:flutter/material.dart';

class WalletTokens extends StatelessWidget {
  WalletTokens({Key? key}) : super(key: key);

  final tokens = TOKENS.values.toList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: TOKENS.length,
      padding: const EdgeInsets.symmetric(vertical: Sizes.p5),
      itemBuilder: (context, index) => ListTile(
        contentPadding: const EdgeInsets.only(left: 2),
        leading: TokenImage(source: tokens[index].icon),
        title: Container(
          margin: const EdgeInsets.only(bottom: Sizes.p5),
          child: Text(
            tokens[index].name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: Sizes.large),
          ),
        ),
        subtitle: Row(
          children: [
            Text(
              "\$${convertTokenToDollars(1, tokens[index].name)}",
              style: TextStyle(
                  fontFamily: AppTheme.fonts.ibmBMPlexMono,
                  fontSize: Sizes.medium),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "${tokens[index].rate}%",
              style: TextStyle(
                  fontFamily: AppTheme.fonts.ibmBMPlexMono,
                  fontSize: Sizes.medium,
                  color:
                      tokens[index].status == "I" ? Colors.green : Colors.red),
            ),
          ],
        ),
        trailing: Text(
          "${tokens[index].balance} ${tokens[index].symbol}",
          style: TextStyle(
              fontFamily: AppTheme.fonts.ibmBMPlexMono,
              fontWeight: FontWeight.w500,
              fontSize: Sizes.large),
        ),
      ),
    );
  }
}
