class Token {
  late String id;
  final String name;
  final String symbol;
  final String icon;
  final double rate;
  final double priceUSD;
  final String status;
  final double balance;
  final String defaultSwapChain;

  Token({id,
      required this.name,
      required this.symbol,
      required this.icon,
      required this.rate,
      required this.priceUSD,
      required this.status,
      required this.balance,
      required this.defaultSwapChain});
}

class SupportedChains {
  static const bitcoin = "Bitcoin";
  static const binance = "Binance";
  static const ethereum = "Ethereum";
  static const polygon = "Polygon";

  SupportedChains._();
}
