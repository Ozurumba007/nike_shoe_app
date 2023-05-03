import 'package:flutter/material.dart';
import 'package:nike_store/components/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // this selected index is to control the bottom nav bar

  int _selectedIndex = 0;

  // this method will update our selected index

  // when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // screens to display
  final List<Widget> _pages = [
    // shop page
    const ShopScreen(),
    // cart page
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar:
          MyBottomNavBar(onTapChange: (index) => navigateBottomBar(index)),
    );
  }
}
