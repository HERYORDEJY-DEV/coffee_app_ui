import 'package:coffer_app_ui/components/popular_coffee_item.dart';
import 'package:flutter/material.dart';

class PopularCoffeeList extends StatelessWidget {
  const PopularCoffeeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(Size.fromHeight(280)),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => PopularCoffeeItem(),
          itemCount: 5),
    );
  }
}
