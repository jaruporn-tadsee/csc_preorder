import 'package:csc_preorder/user.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'alert.dart';

class PreOrder extends StatelessWidget {
  static String tag = 'pre-order';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSC Pre-Order',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Search()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.account_circle_outlined),
                tooltip: 'User',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.notifications_none),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Alert()),
                  );
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: 'หน้าแรก'),
                Tab(text: 'ติดตาม'),
              ],
            ),
            title: Text('CSC Pre-Order'),
            backgroundColor: Colors.orange,
          ),
          body: TabBarView(children: [
            Container(
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
                                    Row(
                                      children: [
                                        Column(
                                          children: [Text("วันที่โพสต์")],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 0, 8, 0),
                                      child: Text(
                                        "ติดตาม",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
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
                                              child: Text("จองสินค้า"),
                                            )
                                          ],
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
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 8, 0),
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
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 20, 8, 0),
                                                  child:
                                                      Text("รายละเอียดสินค้า"),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 30, 8, 30),
                                                  child: Text("รูปสินค้า"),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
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
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 20, 8, 0),
                                        child: OutlineButton(
                                          child: Text("เพิ่มลงรถเข็น"),
                                          onPressed: () => {},
                                        ),
                                      ),
                                    ), //รูปร้านค้า
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          80, 20, 8, 0),
                                      // ignore: missing_required_param
                                      child: OutlineButton(
                                        child: Text("แชทกับร้านค้า"),
                                        onPressed: () => {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
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
                                    Row(
                                      children: [
                                        Column(
                                          children: [Text("วันที่โพสต์")],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 0, 8, 0),
                                      child: Text(
                                        "ติดตาม",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
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
                                              child: Text("จองสินค้า"),
                                            )
                                          ],
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
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 8, 0),
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
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 20, 8, 0),
                                                  child:
                                                      Text("รายละเอียดสินค้า"),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 30, 8, 30),
                                                  child: Text("รูปสินค้า"),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
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
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 20, 8, 0),
                                        child: OutlineButton(
                                          child: Text("เพิ่มลงรถเข็น"),
                                          onPressed: () => {},
                                        ),
                                      ),
                                    ), //รูปร้านค้า
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          80, 20, 8, 0),
                                      // ignore: missing_required_param
                                      child: OutlineButton(
                                        child: Text("แชทกับร้านค้า"),
                                        onPressed: () => {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
                                    Row(
                                      children: [
                                        Column(
                                          children: [Text("วันที่โพสต์")],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 0, 8, 0),
                                      child: Text(
                                        "ติดตาม",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
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
                                              child: Text("จองสินค้า"),
                                            )
                                          ],
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
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 8, 0),
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
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 20, 8, 0),
                                                  child:
                                                      Text("รายละเอียดสินค้า"),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 30, 8, 30),
                                                  child: Text("รูปสินค้า"),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
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
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 20, 8, 0),
                                        child: OutlineButton(
                                          child: Text("เพิ่มลงรถเข็น"),
                                          onPressed: () => {},
                                        ),
                                      ),
                                    ), //รูปร้านค้า
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          80, 20, 8, 0),
                                      // ignore: missing_required_param
                                      child: OutlineButton(
                                        child: Text("แชทกับร้านค้า"),
                                        onPressed: () => {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
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
                                    Row(
                                      children: [
                                        Column(
                                          children: [Text("วันที่โพสต์")],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 0, 8, 0),
                                      child: Text(
                                        "ติดตาม",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
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
                                              child: Text("จองสินค้า"),
                                            )
                                          ],
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
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 8, 0),
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
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          8, 20, 8, 0),
                                                  child:
                                                      Text("รายละเอียดสินค้า"),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Image.network(
                                                      'https://static.posttoday.com/media/content/2017/08/03/1B9CFCE0C55A484B86F8E88FF218D7EE.jpg'),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
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
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 20, 8, 0),
                                        child: OutlineButton(
                                          child: Text("เพิ่มลงรถเข็น"),
                                          onPressed: () => {},
                                        ),
                                      ),
                                    ), //รูปร้านค้า
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          80, 20, 8, 0),
                                      // ignore: missing_required_param
                                      child: OutlineButton(
                                        child: Text("แชทกับร้านค้า"),
                                        onPressed: () => {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
