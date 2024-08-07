import 'package:flutter/material.dart';

class LanguageBottomSheets extends StatelessWidget {
  const LanguageBottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Arabic", style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.normal,color: Color(0xffB7935F))),
              Icon(Icons.done, size: 30,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English", style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.normal)),
             // Icon(Icons.done, size: 30,)
            ],
          ),
        ),

      ],
    );
  }
}
