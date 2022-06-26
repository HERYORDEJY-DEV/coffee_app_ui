import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

List categoryList = [
  ["Capuccino", true],
  ["Latte", false],
  ["Milk", false],
  ["Tea", false],
  ["Expresso", false],
  ["Black", false],
];

class _CategoryListState extends State<CategoryList> {
  // void onCategorySelect(index) {
  //   var _categoryList = [...categoryList];
  //   var selectedIndex = _categoryList[index];
  //   selectedIndex = [selectedIndex[0], !selectedIndex[1]];
  //   _categoryList[index] = selectedIndex;
  //   setState(() {
  //     categoryList = _categoryList;
  //   });
  // }

  void onCategorySelect(int index) {
    var _categoryList = [...categoryList];
    for (int i = 0; i < _categoryList.length; i++) {
      _categoryList[i][1] = false;
    }
    _categoryList[index][1] = true;

    setState(() {
      categoryList = _categoryList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 40,
      child: ListView.builder(
        // separatorBuilder: (context, index) => const SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return ButtonItem(
              title: categoryList[index][0],
              focused: categoryList[index][1],
              onPressed: () => onCategorySelect(index));
        }),
        itemCount: categoryList.length,
      ),
    );
  }
}

class ButtonItem extends StatelessWidget {
  final String title;
  final bool focused;
  final VoidCallback onPressed;

  const ButtonItem(
      {Key? key,
      required this.title,
      required this.focused,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: TextButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: focused ? Colors.orange : Colors.grey.shade400),
            ),
            if (focused)
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              )
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
