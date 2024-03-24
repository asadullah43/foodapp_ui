import 'package:flutter/material.dart';
import 'package:foodapp_ui/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp_ui/widgets/category_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
          fontFamily: "Pappins",
          scaffoldBackgroundColor: kWhiteColor,
          textTheme: const TextTheme(
              labelLarge: TextStyle(fontWeight: FontWeight.bold),
              titleMedium: TextStyle(fontWeight: FontWeight.bold),
              bodyLarge: TextStyle(color: kTextColor),
              headlineSmall: TextStyle(fontWeight: FontWeight.bold))),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 40),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 11,
              ),
            ),
          ),
          Text(
            'Sipmle Way to find \n Tasty food',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle(title: "All", active: true),
                CategoryTitle(
                  title: "Italian",
                ),
                CategoryTitle(
                  title: "Asian",
                ),
                CategoryTitle(
                  title: "Chinese",
                ),
                CategoryTitle(
                  title: "Burgers",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
