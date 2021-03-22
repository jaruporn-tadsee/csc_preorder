import 'package:csc_preorder/product_page/product.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  var _price = 200;
  var _date = '20/3/2564';
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Product(/* Send product id to get data */)),
                  )
                },
                child: Card(
                  borderOnForeground: true,
                  child: Column(
                    children: [
                      Container(
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Image(
                            image: NetworkImage(
                                'https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg')),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'ต้มยำกุ้ง แซ่บบ ๆ อูมามิสุดๆ ราคาย่อมเยา',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  '฿$_price',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 16),
                                )),
                                Container(
                                  child: Text('จัดส่ง : $_date'),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }
}
