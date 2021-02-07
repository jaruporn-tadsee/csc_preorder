import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'สั่งจองสินค้า',
        ),
      ),
      body: ListView(
        children: [
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
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 0, 8, 0),
                                        child: Text(
                                          "ที่อยู่สำหรับจัดส่ง",
                                          style: TextStyle(fontSize: 18.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [Text("ชื่อลูกค้า")
                                        
                                        ],
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
