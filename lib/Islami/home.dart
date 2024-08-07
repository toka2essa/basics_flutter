
import 'package:flutter/material.dart';
import 'package:flutter_basics/Islami/tab/ahadeth_tab.dart';
import 'package:flutter_basics/Islami/tab/quran_tab.dart';
import 'package:flutter_basics/Islami/tab/radio_tab.dart';
import 'package:flutter_basics/Islami/tab/sebha_tab.dart';
import 'package:flutter_basics/Islami/tab/settings_tab.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  static var routename;

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset( "assets/Image/bg3.png"),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text("Islami"
                , style:GoogleFonts.elMessiri(
                    fontSize:30,
                    fontWeight:FontWeight.bold
                )),
          ),
          bottomNavigationBar:
          BottomNavigationBar(
              currentIndex: selectIndex,
              onTap: (index) {
                selectIndex = index;
              setState(() {

              });
              },
              showSelectedLabels:false,
              showUnselectedLabels:false ,
              backgroundColor: Color(0xffB7935F),
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              items: [BottomNavigationBarItem(
                backgroundColor:Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/Image/quran.png")),label: "moshaf"),
                BottomNavigationBarItem(
                    backgroundColor:Color(0xffB7935F),
                    icon: ImageIcon(AssetImage("assets/Image/sebha.png")),label: "sebha"),
                BottomNavigationBarItem(
                    backgroundColor:Color(0xffB7935F),
                    icon: ImageIcon(AssetImage("assets/Image/radio.png")),label:"Radio"),
                BottomNavigationBarItem(
                    backgroundColor:Color(0xffB7935F),
                    icon: ImageIcon(AssetImage("assets/Image/quran-quran-svgrepo-com.png")),label: "Ahadeth"),
                BottomNavigationBarItem(
                    backgroundColor:Color(0xffB7935F),
                    icon:Icon(Icons.settings),label: "Settings")

  ],
    ),
          body: tabs[selectIndex],
        )]);
  }
 List<Widget> tabs=[
   QuranTab(),
   RadioTab(),
   sebhatab(),
   SettingTab(),
   AhadethTab(),
 ];}
