import 'package:bwalletflutter/models/index.dart';
import 'package:bwalletflutter/utils/assets.dart';

// ignore: non_constant_identifier_names
Map<String, dynamic> CURRENT_USER = {
  "username": "@satoshi",
  "amount": 2.0,
  "token": "Bitcoin",
  "address": "0xE21603B45E2675fFeB9f20EED098e268219508CB",
};

// ignore: non_constant_identifier_names
Map<String, Token> TOKENS = {
  "Bitcoin": Token(
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
  "Ethereum": Token(
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
  "Binance": Token(
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
  "Polygon": Token(
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
};

// ignore: non_constant_identifier_names
List<Transaction> TRANSACTIONS = [
  Transaction(
    type: "stake",
    amount: 0,
    from: "Binance",
    to: "",
    date: "2022-04-16",
  ),
  Transaction(
    type: "swap",
    amount: 100,
    from: "Polygon",
    to: "Bitcoin",
    date: "2022-03-30",
  ),
  Transaction(
    type: "buy",
    amount: 100,
    from: "Polygon",
    to: "",
    date: "2021-03-30",
  ),
];
