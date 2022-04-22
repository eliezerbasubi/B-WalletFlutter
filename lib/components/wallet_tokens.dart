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
      padding: const EdgeInsets.symmetric(vertical: 5),
      itemBuilder: (context, index) => ListTile(
        contentPadding: const EdgeInsets.only(left: 2),
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            boxShadow: const [BoxShadows.shadow],
            borderRadius: BorderRadius.circular(Sizes.p30),
          ),
          child: Image(
            image: AssetImage(tokens[index].icon),
            fit: BoxFit.contain,
          ),
        ),
        title: Container(
          margin: const EdgeInsets.only(bottom: 5),
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
