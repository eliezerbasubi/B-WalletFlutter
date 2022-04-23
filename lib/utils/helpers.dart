import 'package:bwalletflutter/utils/data.dart';
import 'package:intl/intl.dart';

String convertTokenToDollars(double price, String tokenName) {
  final chain = TOKENS[tokenName];

  final valueInDollar = chain!.priceUSD * price;
  return valueInDollar.toStringAsFixed(2);
}

String truncate(String str) {
  return "${str.substring(0, 4)}...${str.substring(str.length - 4, str.length)}";
}

dynamic localeDate(String date) => DateFormat('MMM dd, yy').format(DateTime.parse(date));
