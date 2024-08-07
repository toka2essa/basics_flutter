import 'package:flutter/material.dart';
import 'package:flutter_basics/providers/my_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheets extends StatelessWidget {
  const ThemeBottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<MyProvider>(context);
    return Column(

      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: (){
            provider.changeTheme(ThemeMode.light);
          }
          ,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ligth",style: TextStyle
                  (fontSize:30,fontWeight: FontWeight.normal,color: Color(0xffB7935F))),
                  Icon(Icons.done ,size:30 ,
                  color: Colors.black,)
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            provider.changeTheme(ThemeMode.dark);

          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark",style: TextStyle(fontSize:30,fontWeight: FontWeight.normal)),
               // Icon(Icons.done,size: 30,)
              ],
            ),
          ),
        ),

      ],
    );
  }
}
