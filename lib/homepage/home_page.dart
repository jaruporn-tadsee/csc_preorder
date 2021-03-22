import 'package:badges/badges.dart';
import 'package:csc_preorder/cartpage/user_cart.dart';
import 'package:csc_preorder/homepage/newsfeed.dart';
import 'package:csc_preorder/homepage/search.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchPage()));
          },
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.white),
              Text(
                'CSC Pre-Order',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        actions: [
          Badge(
            position: BadgePosition.topEnd(top: 0, end: 3),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text(
              _counter.toString(),
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserCart()));
                }),
          ),
          IconButton(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: NewsFeed(),
    );
  }
}
