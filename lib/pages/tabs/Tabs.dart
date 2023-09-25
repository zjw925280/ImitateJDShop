import 'package:flutter/material.dart';
import 'package:imitatejdshop/pages/tabs/CartPage.dart';
import 'package:imitatejdshop/pages/tabs/CategoryPage.dart';
import 'package:imitatejdshop/pages/tabs/HomePage.dart';
import 'package:imitatejdshop/pages/tabs/PeoplePage.dart';
class Tabs extends StatefulWidget {
  const Tabs({super.key});
  @override
  _TabsState createState() => _TabsState();
}
class _TabsState extends State<Tabs> {
  int _currentIndex=0;
  final List _pageslist=[
     const HomePage(),
     const CategoryPage(),
     const CartPage(),
     const PeoplePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageslist[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        currentIndex: _currentIndex,
        onTap:(index){
          setState(() {
           _currentIndex=index;
          });
        } ,
        type:BottomNavigationBarType.fixed ,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "购物车"),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: "我的"),
        ],
      ),

    );
  }
}
