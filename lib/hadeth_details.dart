import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Islami/hadeth.model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName ='/Hadeth Screen';
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
    child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            model.title,
            style: GoogleFonts.elMessiri(),
          ),
        ),
        body: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: model.content.length, // Assuming model.content is a list of hadeth content
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    model.content[index],
                    style: GoogleFonts.elMessiri(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}