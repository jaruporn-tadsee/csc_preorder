import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ร้านอาหาร'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'Show Snackbar',
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.local_grocery_store_outlined),
                tooltip: 'shopping basket',
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications_none),
                tooltip: 'Show Snackbar',
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: 'หน้าแรก'),
                Tab(text: 'ติดตาม'),
              ],
            ),
            title: Text('CSC Pre-Order'),
          ),
        ),
      ),
    );
  }
}
