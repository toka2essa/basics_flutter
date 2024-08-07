import 'package:flutter/material.dart';
import 'package:flutter_basics/Islami/sura_details_screen.dart';
import 'package:flutter_basics/hadeth_details.dart';
import 'package:flutter_basics/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'Islami/home.dart'; // Ensure this import path is correct

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyProvider(),

      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {



    var provider= Provider.of<MyProvider>(context);
    var routename;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: provider.appTheme,
      routes: <String, WidgetBuilder>{
        SuraDetailsScreen.routename: (context) => const SuraDetailsScreen(),
        HadethDetails.routeName: (context) =>  const HadethDetails()
        },
      initialRoute: HomeScreen.routename,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );}

}