import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basics/Islami/hadeth.model.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../hadeth_details.dart';
import '../colors.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  List<HadethModel> allAhadeth = [];

  @override
  void initState() {
    super.initState();
    loadHadethFile();
    print(allAhadeth);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/Image/hadith_header.png",
          height: 219,
        ),
        Divider(
          thickness: 3,
          color: ColorsApp.primarycolor,
        ),
        Text(
          "Ahadeth",
          textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        Divider(
          thickness: 3,
          color: ColorsApp.primarycolor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadethDetails.routeName,
                    arguments: allAhadeth[index],
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    allAhadeth[index].title,
                    style: GoogleFonts.elMessiri(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    String fileContent = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = fileContent.trim().split("#");
    for (String hadeth in ahadeth) {
      List<String> hadethLines = hadeth.trim().split("\n");
      String title = hadethLines.first;
      hadethLines.removeAt(0);
      List<String> content = hadethLines;
      HadethModel hadethModel = HadethModel(content, title);
      allAhadeth.add(hadethModel);
    }
    print(allAhadeth.length);
    setState(() {});
  }
}