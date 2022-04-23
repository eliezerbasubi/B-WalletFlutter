import 'package:bwalletflutter/utils/assets.dart';
import 'package:flutter/material.dart';

class TokenImage extends StatelessWidget {
  final String source;
  final double height = 40;
  final double width = 40;
  
  const TokenImage({Key? key, required this.source, height, width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: const [BoxShadows.shadow],
        borderRadius: BorderRadius.circular(Sizes.p30),
      ),
      child: Image(
        image: AssetImage(source),
        fit: BoxFit.contain,
      ),
    );
  }
}
