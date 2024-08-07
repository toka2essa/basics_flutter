import 'package:flutter/material.dart';

class CustomBottomNavigationWidget extends StatefulWidget {
  final ValueChanged<int> onSelectedIndexChanged;
  const CustomBottomNavigationWidget({super.key,
  required this.onSelectedIndexChanged});

  @override
  State<CustomBottomNavigationWidget> createState() => _CustomBottomNavigationWidgetState();
}

class _CustomBottomNavigationWidgetState extends State<CustomBottomNavigationWidget> {

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectIndex,
      onTap: (index) {
        setState(() {
          selectIndex = index;
        });
        widget.onSelectedIndexChanged(index);
      },
      showSelectedLabels:false,
      showUnselectedLabels:false,
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            backgroundColor:Color(0xffB7935F),
            icon: ImageIcon(AssetImage("assets/Image/quran.png")),label: "moshaf"),
        BottomNavigationBarItem(
            backgroundColor:Color(0xffB7935F),
            icon: ImageIcon(AssetImage("assets/Image/sebha.png")),label: "sebha"),
        BottomNavigationBarItem(
            backgroundColor:Color(0xffB7935F),
            icon: ImageIcon(AssetImage("assets/Image/quran-quran-svgrepo-com.png")),label: "Ahadeth"),
        BottomNavigationBarItem(
            backgroundColor:Color(0xffB7935F),
            icon: ImageIcon(AssetImage("assets/Image/radio.png")),label:"Radio"),
        BottomNavigationBarItem(
            backgroundColor:Color(0xffB7935F),
            icon:Icon(Icons.settings),label: "Settings")

      ],
    );
  }
}
