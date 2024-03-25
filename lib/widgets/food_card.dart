import 'package:flutter/material.dart';

import 'package:foodapp_ui/constant.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  const FoodCard(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      required this.calories,
      required this.description,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 380,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: kPrimaryColor.withOpacity(.06),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  height: 181,
                  width: 181,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(.15),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: -50,
                child: Container(
                  height: 184,
                  width: 276,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 80,
                child: Text(
                  "\$$price",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: kPrimaryColor),
                ),
              ),
              Positioned(
                top: 201,
                left: 40,
                child: Container(
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        description,
                        maxLines: 3,
                        style: TextStyle(
                          color: kTextColor.withOpacity(.65),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        calories,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
