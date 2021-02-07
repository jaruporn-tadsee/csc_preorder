import 'package:flutter/material.dart';
import 'menu_page.dart';

class User extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ฉัน'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.forum_outlined),
            tooltip: 'User',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Show Snackbar',
            onPressed: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(8, 20, 0, 0),
        child: Column(
          children: [
            Card(
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 25.0,
                                  child: Image.network(
                                      'https://i.pinimg.com/736x/68/6c/25/686c25b3885ec377547d2b73c2c51eb0.jpg'),
                                ),
                              ), //รูปร้านค้า
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 10, 8, 0),
                                    child: Text(
                                      "ชื่อลูกค้า",
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 10, 8, 0),
                                    child: Text(
                                      "กำลังติดตาม 16",
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "รายการที่จอง",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 8, 0),
                                                child: Text(
                                                  "ชื่อสินค้า",
                                                  style:
                                                      TextStyle(fontSize: 18.0),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                      child: Text("ส่งสินค้า"),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "วันที่",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 25.0,
                                          child: Image.network(
                                              'https://img.kapook.com/u/2020/Jarosphan/Pet/Cat/00.jpg'),
                                        ),
                                      ), //รูปร้านค้า
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 0, 8, 0),
                                            child: Text(
                                              "ชื่อร้านค้า",
                                              style: TextStyle(fontSize: 18.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
             Card(
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 8, 0),
                                                child: Text(
                                                  "ชื่อสินค้า",
                                                  style:
                                                      TextStyle(fontSize: 18.0),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                      child: Text("ส่งสินค้า"),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "วันที่",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 25.0,
                                          child: Image.network(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUnmXQSRPKHACBOgksheyVx10WZZpW-m4EgQ&usqp=CAU'),
                                        ),
                                      ), //รูปร้านค้า
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 0, 8, 0),
                                            child: Text(
                                              "ชื่อร้านค้า",
                                              style: TextStyle(fontSize: 18.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
