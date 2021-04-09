import 'package:csc_preorder_beta/models/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
final bool _isLogin = false;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _isLogin ? buildDrawer() : null,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'CSC-PreOrder',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () => {})],
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) =>
              postBuilder(postsJson),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: postsJson.length),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Drawer Header'),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(color: Colors.orange),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {},
        ),
      ],
    ));
  }

  TextStyle _fontStyle() {
    return TextStyle(fontSize: 16);
  }

  void showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => CupertinoActionSheet(
              actions: [
                CupertinoActionSheetAction(
                    onPressed: () => {}, child: Text('รายงานร้านค้า')),
                CupertinoActionSheetAction(
                    onPressed: () => {}, child: Text('data')),
                CupertinoActionSheetAction(
                    onPressed: () => {}, child: Text('data')),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () => {Navigator.of(context).pop()},
                child: Text('ยกเลิก'),
              ),
            ));
  }

  InkWell postBuilder(Object postJson) {
    return InkWell(
      onTap: () => {},
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Row(children: [
                        Expanded(
                            child: Text(
                          'ร้านยำแซ่บ BY นายปัง',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                        IconButton(
                          onPressed: () => {showActionSheet(context)},
                          icon: Icon(Icons.more_horiz),
                        )
                      ]),
                      Container(
                        child: Text(
                          'ส่งวันที่ ' + DateTime.now().toString(),
                          style: _fontStyle(),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  InkWell(
                      onTap: () => {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'menuName',
                              style: _fontStyle(),
                            ),
                          )),
                          Container(
                            child: Text('Price'),
                            padding: EdgeInsets.only(right: 10),
                          ),
                          Container(
                            child: Text('available'),
                            padding: EdgeInsets.all(10),
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}