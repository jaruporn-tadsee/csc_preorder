import 'package:flutter/material.dart';

class UserCart extends StatefulWidget {
  @override
  _UserCartState createState() => _UserCartState();
}

class _UserCartState extends State<UserCart> {
  int _n = 0;

  void increase() {
    setState(() {
      _n++;
    });
  }

  void decrease() {
    setState(() {
      _n--;
      if (_n < 0) {
        _n = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตระกร้าสินค้า'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: NetworkImage(
                        'https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Product Name'),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: decrease,
                        icon: Icon(Icons.remove),
                      ),
                      Text('$_n'),
                      IconButton(
                        onPressed: increase,
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                IconButton(icon: Icon(Icons.delete), onPressed: () {})
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: NetworkImage(
                        'https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Product Name'),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: decrease,
                        icon: Icon(Icons.remove),
                      ),
                      Text('$_n'),
                      IconButton(
                        onPressed: increase,
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                IconButton(icon: Icon(Icons.delete), onPressed: () {})
              ],
            ),
          ),
          Divider(),
          Container(
            child: Text('ที่อยู่'),
          ),
          Divider(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.check_circle_outline),
                  label: Text('ยืนยันคำสั่งซื้อ')),
            ),
          )
        ],
      ),
    );
  }
}
