import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_sheets/Theme_bottom_sheets.dart';
import 'package:flutter_basics/bottom_sheets/language_bottom_sheets.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Theme"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ThemeBottomSheets();
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Color(0xffB7935F)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("light"),
                ),
              ),
            ),
          ),
          Text("Language"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return LanguageBottomSheets();
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Color(0xffB7935F)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Arabic"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
