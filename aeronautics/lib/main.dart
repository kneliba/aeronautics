import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Content'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text(widget.title,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: ""),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16.0),
            Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.circular(14)),
                )),
            const SizedBox(height: 8.0),
            const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "Header",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                )),
            const SizedBox(height: 8.0),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Text(
                'This is a short description of the image. Lorem ipsum dolor sit amet, consectetur adipisc Duis aute irure dolor in reprehenderit ',
              ),
            ),
            const SizedBox(height: 8.0),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text('8m ago ',
                  style: TextStyle(color: Color.fromARGB(255, 227, 227, 227))),
            ),
          ],
        ),
      ),
    );
  }
}
