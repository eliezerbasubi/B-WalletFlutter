import 'package:bwalletflutter/models/index.dart';
import 'package:bwalletflutter/utils/assets.dart';

List<Token> tokens = [
  Token(
    id: 1,
    name: "Bitcoin",
    symbol: "BTC",
    icon: AssetsImage.bitcoin,
    rate: 2.45,
    priceUSD: 40455.1,
    status: "I",
    balance: 0,
    defaultSwapChain: "Binance",
  ),
  Token(
    id: 2,
    name: "Ethereum",
    symbol: "ETH",
    icon: AssetsImage.ethereum,
    rate: 5.5,
    priceUSD: 3050.78,
    status: "D",
    balance: 0,
    defaultSwapChain: "Bitcoin",
  ),
  Token(
    id: 3,
    name: "Binance",
    symbol: "BSC",
    icon: AssetsImage.binance,
    rate: 3.45,
    priceUSD: 416.58,
    status: "I",
    balance: 0,
    defaultSwapChain: "Polygon",
  ),
  Token(
    id: 4,
    name: "Polygon",
    symbol: "MATIC",
    icon: AssetsImage.polygon,
    rate: 1.3,
    priceUSD: 1.39,
    status: "D",
    balance: 0,
    defaultSwapChain: "Ethereum",
  ),
];
