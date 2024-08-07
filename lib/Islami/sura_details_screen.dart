import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basics/Islami/sura_model.dart';
import 'package:google_fonts/google_fonts.dart';

class SuraDetailsScreen extends StatefulWidget {
  static var routename='/surah';

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as Suramodel;
    if (verses.isEmpty) {
      loadSuraFile(model.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Image/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child:Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(model.name),
    ),
    body: ListView.builder(
    itemBuilder: (context, index) {
    return Text(verses[index],
    textAlign: TextAlign.center,
    style: GoogleFonts.elMessiri(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),);
    },
    itemCount: verses.length,
    ),
    ),
    );
  }


  void loadSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = sura.split("\n");
    setState(() {
      verses = suraLines;
    });
  }
}
