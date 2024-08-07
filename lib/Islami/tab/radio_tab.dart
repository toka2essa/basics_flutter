
import 'package:flutter/material.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  int counter = 0;
  double angle = 0;
  List<String>Azzkar = [
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر ",
    "سبحان الله"
  ];
  int label = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/Image/head of seb7a.png"),
            Padding(padding: EdgeInsets.only(top: 75),

              child: Transform.rotate(angle: angle,

                  child: GestureDetector(
                    onTap: () {
                      onpressed();
                    },
                    child: Image.asset("assets/Image/body of seb7a.png")
                    ,
                  )),

            ),


          ],
        ),
        Padding(padding: EdgeInsets.only(top: 27),
            child:
            Text("عدد التسبيحات", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
              textAlign: TextAlign.center,
            )),
        Padding(padding: EdgeInsets.only(top: 26),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xffB7935F),
                    borderRadius: BorderRadius.
                    circular(20)
                ),
                child: Text("$counter"
                  , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
              ),
            )),
        Padding(padding: EdgeInsets.only(top: 26),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xffB7935F),
                    borderRadius: BorderRadius.
                    circular(20)
                ),
                child: Text("${Azzkar[label]}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
              ),
            )),
      ],
    );
  }

  onpressed() {
    counter++;
    if (counter < 32) {
      label++;
      counter = 0;
    }
    if (label == Azzkar.length);
    {
      label == 0;
    }
    angle +=360/4;
    setState(() {

    });
  }
}
