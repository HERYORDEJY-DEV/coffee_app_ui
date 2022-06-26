import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          iconColor: Colors.green,
          hintText: "Search",
          focusedBorder: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade900, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          alignLabelWithHint: true,
        ),
      ),
    );
  }
}
