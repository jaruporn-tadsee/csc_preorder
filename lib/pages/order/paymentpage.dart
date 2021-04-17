import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ชำระเงิน'),
      ),
      body: buildBodyPayment(),
    );
  }

  SingleChildScrollView buildBodyPayment() {
    return SingleChildScrollView(
      child: Column(
        children: [buildAddressWidget()],
      ),
    );
  }

  Container buildAddressWidget() => Container(
        child: Container(
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
        ),
      );
}
