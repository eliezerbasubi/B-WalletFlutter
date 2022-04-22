import 'package:flutter/material.dart';

class AssetsImage {
  static const wallet = "assets/images/wallet.png";
  static const bitcoin = "assets/images/bitcoin.png";
  static const binance = "assets/images/binance.png";
  static const ethereum = "assets/images/ethereum.png";
  static const polygon = "assets/images/polygon.png";

  AssetsImage._();
}

class ColorCodes {
  ColorCodes._();

  static const primary = 0xff1d3557;
  static const secondary = 0xff7DFFF3;
  static const tertiary = 0xff9E80FF;
  static const red = 0xffe63946;
  static const gray = 0xfff6f6f6;
  static const gray10 = 0xffDADADA;
}

class Sizes {
  static const p40 = 40.0;
  static const p30 = 30.0;
  static const p20 = 20.0;
  static const p15 = 15.0;
  static const p6 = 6.0;
  static const base = 8.0;
  static const small = 12.0;
  static const font = 14.0;
  static const medium = 16.0;
  static const large = 18.0;
  static const extraLarge = 24.0;
}

class BoxShadows {
  BoxShadows._();

  static const shadow = BoxShadow(
      blurRadius: 4.0, offset: Offset(0, 0), color: Colors.black12);

  static const shadow4 = BoxShadow(
      blurRadius: 4.65, offset: Offset(0, 4), color: Colors.grey);
}
