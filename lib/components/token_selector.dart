import 'package:bwalletflutter/utils/data.dart';
import 'package:flutter/material.dart';

class TokenSelector extends StatefulWidget {
  const TokenSelector({Key? key}) : super(key: key);

  @override
  State<TokenSelector> createState() => _TokenSelectorState();
}

class _TokenSelectorState extends State<TokenSelector> {
  String selectedItem = "Bitcoin";

  final items = tokens
      .map((item) => DropdownMenuItem(
          value: item.name,
          child: Row(
            children: [
              Image.asset(
                item.icon,
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(item.name),
            ],
          )))
      .toList();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        isDense: true,
        isCollapsed: true,
        contentPadding: const EdgeInsets.all(10.0),
        constraints: const BoxConstraints(maxWidth: 200, maxHeight: 50),
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 1, color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 1, color: Colors.white),
        ),
      ),
      items: items,
      value: selectedItem,
      isExpanded: true,
      onChanged: (String? value) => {
        if (value is String)
          {
            setState(() => {selectedItem = value})
          }
      },
    );
  }
}
