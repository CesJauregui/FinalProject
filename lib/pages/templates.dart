import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      selectedItemColor: Colors.blue,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart_rounded,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              //color: Colors.grey,
            ),
            label: ' '),
      ],
    );
  }
}
