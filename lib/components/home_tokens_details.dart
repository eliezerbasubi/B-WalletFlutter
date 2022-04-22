import 'package:bwalletflutter/components/wallet_tokens.dart';
import 'package:bwalletflutter/theme/index.dart';
import 'package:bwalletflutter/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeTokensDetails extends StatefulWidget {
  const HomeTokensDetails({Key? key}) : super(key: key);

  @override
  State<HomeTokensDetails> createState() => _HomeTokensDetailsState();
}

class _HomeTokensDetailsState extends State<HomeTokensDetails>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p30, horizontal: Sizes.p20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(Sizes.p40), topRight: Radius.circular(Sizes.p40)),
        color: Colors.white,
        boxShadow: [BoxShadows.shadow]
      ),
      child: Column(
        children: [
          Container(
            height: Sizes.p40,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(Sizes.base), 
            color: const Color(ColorCodes.gray),),
            child: TabBar(
              controller: tabController,
              labelColor: AppTheme.colors.primary,
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Sizes.base),
              ),
              tabs: const [
                Tab(
                  text: "Tokens",
                ),
                Tab(
                  text: "Transactions",
                ),
              ],
            ),
          ),
          Expanded(child: TabBarView(
            controller: tabController,
            children: [
            WalletTokens(),
            const Text("Transactions")
          ]))
        ],
      ),
    );
  }
}
