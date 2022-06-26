import 'package:flutter/material.dart';

class CustomBotomTabBar extends StatefulWidget {
  final pageIndex;

  const CustomBotomTabBar({Key? key, this.pageIndex}) : super(key: key);

  @override
  State<CustomBotomTabBar> createState() => _CustomBotomTabBarState();
}

class _CustomBotomTabBarState extends State<CustomBotomTabBar> {
  int _index = 0;

  void _onPressed(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF101014),
      ),
      child: BottomAppBar(
        elevation: 3,
        color: Colors.transparent,
        child: SizedBox(
          width: width,
          height: 55,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomTabBarButton(
                  focused: _index == 0,
                  icon: Icons.home,
                  onPressed: () {},
                  title: 'Home',
                ),
                BottomTabBarButton(
                  focused: _index == 1,
                  icon: Icons.shopping_bag,
                  onPressed: () {},
                  title: 'Cart',
                ),
                BottomTabBarButton(
                  focused: _index == 1,
                  icon: Icons.favorite,
                  onPressed: () {},
                  title: 'Cart',
                ),
                BottomTabBarButton(
                  focused: _index == 2,
                  icon: Icons.notifications,
                  onPressed: () {},
                  title: 'Notification',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomTabBarButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final bool focused;
  final IconData icon;

  const BottomTabBarButton(
      {Key? key,
      required this.focused,
      required this.onPressed,
      required this.title,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        color: focused ? Color(0xFFd27842) : Color(0xFF4f5054), fontSize: 13);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: focused ? Color(0xFFd27842) : Color(0xFF4f5054)),
        // Text(
        //   title,
        //   style: textStyle,
        // )
      ],
    );
  }
}
