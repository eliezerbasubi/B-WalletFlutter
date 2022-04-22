class Token {
  late String id;
  final String name;
  final String symbol;
  final String icon;
  late double rate;
  late double priceUSD;
  late String status;
  late double balance;
  late String defaultSwapChain;

  Token({id,
      required this.name,
      required this.symbol,
      required this.icon,
      rate,
      priceUSD,
      status,
      balance,
      defaultSwapChain});
}

class SupportedChains {
  static const bitcoin = "Bitcoin";
  static const binance = "Binance";
  static const ethereum = "Ethereum";
  static const polygon = "Polygon";

  SupportedChains._();
}
