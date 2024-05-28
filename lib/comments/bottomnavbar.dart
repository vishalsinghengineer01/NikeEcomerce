import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
 BottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav
          (
          color: Colors.grey.shade400,
          activeColor: Colors.grey.shade700,
          tabBackgroundColor: Colors.grey.shade300,
          tabActiveBorder: Border.all(color: Colors.grey),
          mainAxisAlignment: MainAxisAlignment.center,
         tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
         GButton(
           icon: Icons.home,
           text: 'Shop',
         ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          )
        ],),
      ) ,
    );
  }
}
