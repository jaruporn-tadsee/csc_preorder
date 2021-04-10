import 'package:flutter/material.dart';

class Basket extends StatefulWidget {
  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
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
      body: Column(children: [
        Row(
          children: [
            Container(
              child: Text(
                'ชื่อร้าน :ยำแซ่บ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: Text(
                'ชำระเงิน',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    child: Image(
                      image: NetworkImage(
                          'https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        'ตัวเลือกสินค้า :ยำกุ้งสด',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
