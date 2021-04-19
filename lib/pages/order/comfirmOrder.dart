import 'package:csc_preorder_beta/pages/order/orderpage.dart';
import 'package:flutter/material.dart';

class ConfirmOrder extends StatefulWidget {
  @override
  _ConfirmOrderState createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ชำระเงิน'),
      ),
      body: buildBodyPayment(),
      bottomNavigationBar: buildButtomBar(),
    );
  }

  SingleChildScrollView buildBodyPayment() {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildAddressWidget(),
          Container(
            padding: EdgeInsets.all(8),
            child: SizedBox(
                width: double.infinity,
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'รายการสั่งซื้อทั้งหมด',
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Text(
                        'ค่าจัดส่ง : ออร์เดอร์ละ 5฿',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                )),
          ),
          buildListOrder(),
          Container(
            padding: EdgeInsets.all(8),
            child: SizedBox(
                width: double.infinity,
                child: Container(
                  child: Text(
                    'การชำระเงิน',
                    textAlign: TextAlign.left,
                  ),
                )),
          ),
          buildPayment()
        ],
      ),
    );
  }

  Container buildPayment() => Container(
        width: double.infinity,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    Text("วิธีการชำระเงิน"),
                    Spacer(),
                    TextButton(
                        onPressed: () {}, child: Text("ชำระเงินปลายทาง")),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('รวมการสั่งซื้อ'),
                        Spacer(),
                        Text("฿บาท")
                      ],
                    ),
                    Row(
                      children: [Text('รวมการจัดส่ง'), Spacer(), Text("฿บาท")],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "ยอดชำระทั้งหมด",
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '฿บาท',
                      style: TextStyle(fontSize: 18, color: Colors.orange),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );

  Container buildListOrder() => Container(
          child: Card(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: SizedBox(
                  child: Image(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/163565193_120840966682848_3524140195171092480_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=8bfeb9&_nc_eui2=AeGU4HkUu9I2TRINDVbP84aHBOekn3VROHoE56SfdVE4ekn-Yw3VC0edHzbDgRQlrH-jQGx64F3hENJD0xJX_6r7&_nc_ohc=DpDPigREQzwAX-51Ia8&_nc_ht=scontent.fbkk12-3.fna&oh=0cc685abeb2af59843286bb143a333af&oe=60A0A7AC'),
                  ),
                ),
              ),
              title: Text('productName'),
              trailing: Text("฿productPrice" + " x" + "quantity"),
            )
          ],
        ),
      ));

  Container buildAddressWidget() => Container(
        child: Card(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.location_history),
                        Text(
                          "ที่อยู่สำหรับจัดส่ง",
                          textAlign: TextAlign.left,
                        ),
                        Spacer(),
                        IconButton(
                            icon: Icon(
                              Icons.edit,
                              size: 15,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      "ชื่อ สกุล | เบอร์โทรศัพท์ \n บ้านเลขที่ 59 หมู่ที่ 20 หมู่บ้านวิศวกรรมคอมพิวเตอร์",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Container buildButtomBar() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7),
            ],
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("ยอดชำระทั้งหมด"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "100฿",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () => {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => OrderPage()))
                  },
                  child: Text(
                    "สั่งสินค้า",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
