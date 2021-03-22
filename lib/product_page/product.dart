import 'package:badges/badges.dart';
import 'package:csc_preorder/cartpage/user_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Name',
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
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Image(
                  image: NetworkImage(
                      'https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg')),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'ต้มยำกุ้ง แซ่บบ ๆ อูมามิสุดๆ ราคาย่อมเยา',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.add_shopping_cart),
                      onPressed: () => {
                            setState(() {
                              _counter++;
                            })
                          })
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://avatarfiles.alphacoders.com/114/thumb-114421.jpg'),
                      radius: 20,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Store Name or Seller',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.storefront),
                      label: Text('ไปที่ร้านค้า'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
