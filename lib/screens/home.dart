import 'package:coffer_app_ui/components/app-bar.dart';
import 'package:coffer_app_ui/components/bottom-tab-bar.dart';
import 'package:coffer_app_ui/components/category_list.dart';
import 'package:coffer_app_ui/components/popular_coffee_list.dart';
import 'package:coffer_app_ui/components/search_bar.dart';
import 'package:flutter/material.dart';

String imagePath = "lib/assets/images/";

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBotomTabBar(),
        appBar: CustomAppBar(),
        body: Column(
          children: [
            SizedBox(height: 25),

            // title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Find the best coffee for you",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),
            ),

            SizedBox(height: 25),

            // search bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchBar(),
            ),

            SizedBox(height: 25),

            CategoryList(),

            SizedBox(height: 25),

            PopularCoffeeList()

            // //category list
            // Padding(
            //   padding: EdgeInsets.only(left: 20.0),
            //   child: CategoryList(),
            // )
          ],
        ));
  }
}
