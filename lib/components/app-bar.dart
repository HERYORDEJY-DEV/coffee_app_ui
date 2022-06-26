import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

String path = "lib/assets/images/";

class CustomAppBar extends AppBar {
  CustomAppBar({Key? key})
      : super(
            backgroundColor: Colors.transparent,
            elevation: 0,
            // title: const Center(child: Text("Yusuf")),
            leading: const Icon(Icons.menu),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "$path" "user-img.jpg",
                    width: 30.0,
                    height: 20.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ]);
}
