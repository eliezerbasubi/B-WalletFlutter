import 'package:bwalletflutter/components/token_image.dart';
import 'package:bwalletflutter/models/index.dart';
import 'package:bwalletflutter/theme/index.dart';
import 'package:bwalletflutter/utils/assets.dart';
import 'package:bwalletflutter/utils/data.dart';
import 'package:bwalletflutter/utils/helpers.dart';
import 'package:flutter/material.dart';

Widget transactionTitle({TextStyle? style, required Transaction transaction}) {
  if (transaction.type == "swap") {
    return Text(
      "Swap ${transaction.amount.toStringAsFixed(2)} ${TOKENS[transaction.from]!.symbol} for ${TOKENS[transaction.to]!.balance} ${TOKENS[transaction.to]!.symbol}",
      style: style,
    );
  }

  return Container(
    margin: const EdgeInsets.only(bottom: Sizes.p5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          capitalize(transaction.type),
          style: style,
        ),
        Text("${transaction.amount} ${TOKENS[transaction.from]!.symbol}", style: TextStyle(fontFamily: AppTheme.fonts.ibmBMPlexMono, fontWeight: FontWeight.w500, fontSize: Sizes.large),)
      ],
    ),
  );
}

Widget transactionIcon({required Transaction transaction}) {
  if (transaction.type == "swap") {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        TokenImage(source: TOKENS[transaction.from]!.icon),
        Positioned(
          right: -Sizes.p15,
          top: 10,
          child: TokenImage(source: TOKENS[transaction.to]!.icon),
        ),
      ],
    );
  }

  if (["stake", "buy", "send"].contains(transaction.type)) {
    final hasDecreased = ["stake", "send"].contains(transaction.type);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        TokenImage(source: TOKENS[transaction.from]!.icon),
        Positioned(
          right: -Sizes.p6,
          bottom: 0,
          child: Container(
              height: Sizes.p20,
              width: Sizes.p20,
              decoration: BoxDecoration(
                color: hasDecreased ? Colors.red : Colors.green,
                borderRadius: BorderRadius.circular(Sizes.p30),
              ),
              child: Icon(
                hasDecreased ? Icons.remove : Icons.add,
                color: Colors.white,
                size: Sizes.p15,
              )),
        ),
      ],
    );
  }
  return const Icon(Icons.bar_chart);
}

class WalletTransactions extends StatelessWidget {
  const WalletTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: Sizes.p5),
      itemCount: TRANSACTIONS.length,
      itemBuilder: (context, index) {
        final tx = TRANSACTIONS[index];

        return ListTile(
          contentPadding: EdgeInsets.zero,
          title: transactionTitle(
            transaction: tx,
            style: const TextStyle(
              fontSize: Sizes.large,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tx.date,
                style: TextStyle(
                    fontFamily: AppTheme.fonts.ibmBMPlexMono,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "\$${convertTokenToDollars(tx.amount, tx.from)}",
                style: TextStyle(
                    fontFamily: AppTheme.fonts.ibmBMPlexMono,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          leading: transactionIcon(transaction: tx),
        );
      },
    );
  }
}
