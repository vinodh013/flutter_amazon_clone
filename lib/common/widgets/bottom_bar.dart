import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_amazon_clone/constants/global_variable.dart';
import 'package:flutter_amazon_clone/features/account/screens/account_screen.dart';
import 'package:flutter_amazon_clone/features/home/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarwidth = 42;
  double bottomBarBorderwidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const AccountScreen(),
     const Center(
      child: Text('Cart Page'),
    ),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
          onTap: updatePage,
          currentIndex: _page,
          selectedItemColor: GlobalVariables.selectedNavBarColor,
          unselectedItemColor: GlobalVariables.unselectedNavBarColor,
          backgroundColor: GlobalVariables.backgroundColor,
          iconSize: 28,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  width: bottomBarwidth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          color: _page == 0
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBarBorderwidth),
                    ),
                  ),
                  child: Icon(Icons.home_outlined),
                ),
                label: ''),
            //Profile
            BottomNavigationBarItem(
                icon: Container(
                  width: bottomBarwidth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          color: _page == 1
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBarBorderwidth),
                    ),
                  ),
                  child: Icon(Icons.person_outline_outlined),
                ),
                label: ''),
            //cart
            BottomNavigationBarItem(
                icon: Container(
                  width: bottomBarwidth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          color: _page == 2
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBarBorderwidth),
                    ),
                  ),
                  child: Badge(
                    badgeContent: const Text('2'),
                    badgeColor: Colors.white,
                    elevation: 0,
                    child: Icon(Icons.shopping_cart_outlined),
                  ),
                ),
                label: ''),
          ]),
    );
  }
}
