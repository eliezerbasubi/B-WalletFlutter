import 'package:bwalletflutter/theme/index.dart';
import 'package:bwalletflutter/utils/assets.dart';
import 'package:bwalletflutter/utils/data.dart';
import 'package:flutter/material.dart';

class WalletTokens extends StatelessWidget {
  const WalletTokens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: tokens.length,
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
              "\$${tokens[index].priceUSD}",
              style: TextStyle(
                  fontFamily: AppTheme.fonts.ibmBMPlexMono,
                  fontSize: Sizes.medium),
            ),
            const SizedBox(width: 10,),
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
