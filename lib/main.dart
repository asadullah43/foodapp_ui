import 'package:flutter/material.dart';
import 'package:foodapp_ui/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp_ui/details_screen.dart';
import 'package:foodapp_ui/widgets/category_title.dart';
import 'package:foodapp_ui/widgets/food_card.dart';

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
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const DetailsScreen();
                      }),
                    );
                  },
                  title: "Vegan salad bowl",
                  image: "assets/images/image_1.png",
                  price: 20,
                  calories: "420Kcal",
                  description:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                const SizedBox(
                  width: 20,
                ),
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const DetailsScreen();
                      }),
                    );
                  },
                  title: "Vegan salad bowl",
                  image: "assets/images/image_2.png",
                  price: 20,
                  calories: "420Kcal",
                  description:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                const SizedBox(width: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
